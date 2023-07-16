from flask import Flask, render_template, request, session, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin, login_user, LoginManager, login_required, logout_user, current_user
import json
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField
from wtforms.validators import InputRequired, Length, ValidationError
from datetime import datetime
import math

with open('config.json', 'r') as c:
    para = json.load(c)["para"]

local_server = True
app = Flask(__name__)
app.secret_key = 'super-secret-key'
app.config['UPLOAD_FOLDER'] = para['upload_location']

if local_server:
    app.config['SQLALCHEMY_DATABASE_URI'] = para['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = para['prod_uri']

db = SQLAlchemy(app)
login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = 'login'


@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))


class Contact(db.Model):
    s_no = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, unique=False, nullable=False)
    email = db.Column(db.String, unique=False, nullable=False)
    subject = db.Column(db.String, unique=False, nullable=True)
    message = db.Column(db.String, unique=False, nullable=False)
    date = db.Column(db.String, unique=False, nullable=False)


class Posts(db.Model):
    s_no = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String, unique=False, nullable=False)
    img1 = db.Column(db.String, unique=False, nullable=True)
    status = db.Column(db.String, unique=False, nullable=False)
    slug = db.Column(db.String, unique=True, nullable=False)
    category = db.Column(db.String, unique=False, nullable=False)
    rooms = db.Column(db.String, unique=False, nullable=True)
    carpet_area = db.Column(db.String, unique=False, nullable=False)
    price = db.Column(db.String, unique=False, nullable=False)
    location = db.Column(db.String, unique=False, nullable=False)
    date = db.Column(db.String, unique=False, nullable=False)
    features = db.Column(db.String, unique=False, nullable=False)
    content = db.Column(db.String, unique=False, nullable=False)
    name = db.Column(db.String, unique=False, nullable=False)
    img2 = db.Column(db.String, unique=False, nullable=True)
    img3 = db.Column(db.String, unique=False, nullable=True)
    img4 = db.Column(db.String, unique=False, nullable=True)
    img5 = db.Column(db.String, unique=False, nullable=True)


class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(20), nullable=False)
    password = db.Column(db.String(50), nullable=False)
    email = db.Column(db.String(50), nullable=True)


class RegisterForm(FlaskForm):
    username = StringField(validators=[
        InputRequired(), Length(min=4, max=20)], render_kw={"placeholder": "Username"})

    password = PasswordField(validators=[
        InputRequired(), Length(min=8, max=20)], render_kw={"placeholder": "Password"})

    email = StringField(validators=[InputRequired(), Length(min=10, max=50)], render_kw={"placeholder": "Email"})

    submit = SubmitField('Register')

    def validate_username(self, username):
        existing_user_username = User.query.filter_by(
            username=username.data).first()
        if existing_user_username:
            raise ValidationError(
                'That username already exists. Please choose a different one.')


class LoginForm(FlaskForm):
    username = StringField(validators=[InputRequired(), Length(min=4, max=20)], render_kw={"placeholder": "Username"})
    password = PasswordField(validators=[InputRequired(), Length(min=4, max=20)], render_kw={"placeholder": "Password"})

    submit = SubmitField("Login")


@app.route("/")
def home():
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        if user:
            if (user.password, form.password.data):
                login_user(user)
                return redirect('/index')

    return render_template('signin.html', para=para, form=form)


@app.route("/404")
def E404():
    return render_template('404.html', para=para)


@app.route("/blog-archive")
def blogArchive():
    return render_template('blog-archive.html', para=para)


@app.route("/blog-single")
def blogSinlge():
    return render_template('blog-single.html', para=para)


@app.route("/contact", methods=['POST', 'GET'])
def contact():
    if (request.method == 'POST'):
        name = request.form.get('author')
        email = request.form.get('email')
        subject = request.form.get('subject')
        message = request.form.get('comment')
        entry = Contact(name=name, email=email, subject=subject, message=message, date=datetime.now())
        db.session.add(entry)
        db.session.commit()

    return render_template('contact.html', para=para)


@app.route("/gallery")
def gallery():
    posts = Posts.query.filter_by().all()[0:9]
    return render_template('gallery.html', para=para, posts=posts)


@app.route("/index", methods=['GET', 'POST'])
@login_required
def index():
    posts = Posts.query.filter_by().all()[0:9]
    if request.method == 'POST':
        location = request.form['location']
        category = request.form['category']

        results = Posts.query.filter(Posts.location.contains(location), Posts.category.contains(category)).all()

        return render_template('search_results.html', results=results, para=para, posts=posts)
    return render_template('index.html', para=para, posts=posts)


@app.route("/properties-detail")
@login_required
def prepertiesDetail():
    post = Posts.query.all()
    return render_template('properties-detail.html', para=para, post=post)


@app.route("/properties")
@login_required
def properties():
    page = request.args.get('page', 1, type=int)
    posts = Posts.query.paginate(page=page, per_page=para['no_of_posts'])
    if request.method == 'POST':
        location = request.form['location']
        category = request.form['category']
        rooms = request.form['type']

        results = Posts.query.filter(Posts.location.contains(location),
                                     Posts.category.contains(category).Posts.rooms.contains(rooms)).all()

        return render_template('search_results.html', results=results, para=para, posts=posts)
    return render_template('properties.html', para=para, posts=posts)


@app.route("/properties-detail/<string:post_slug>", methods=['GET'])
@login_required
def post_route(post_slug):
    post = Posts.query.filter_by(slug=post_slug).first()
    return render_template('properties-detail.html', para=para, post=post)


@app.route("/register", methods=['GET', 'POST'])
def register():
    form = RegisterForm()

    if form.validate_on_submit():
        new_user = User(username=form.username.data, password=form.password.data)
        db.session.add(new_user)
        db.session.commit()
        return redirect('/signin')

    return render_template('register.html', para=para, form=form)


@app.route("/signin", methods=['GET', 'POST'])
def signin():
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        if user:
            if (user.password, form.password.data):
                login_user(user)
                return redirect('/index')

    return render_template('signin.html', para=para, form=form)


@app.route('/logout', methods=['GET', 'POST'])
@login_required
def logout():
    logout_user()
    return redirect(url_for('signin'))


@app.route("/dashboard.html", methods=['GET', 'POST'])
@login_required
def adminLogIn():
    if ('user' in session and session['user'] == para['admin_user']):
        posts = Posts.query.all()
        return render_template("dashboard.html", para=para, posts=posts)

    if request.method == 'POST':
        user_id = request.form.get('email')
        user_pass = request.form.get('password')
        if (user_id == para['admin_user'] and user_pass == para['admin_password']):
            session['user'] = user_id
            posts = Posts.query.all()
            return render_template("dashboard.html", para=para, posts=posts)

    else:
        return render_template('login.html', para=para)


@app.route("/edit/<string:sno>", methods=['GET', 'POST'])
@login_required
def edit(sno):
    if ('user' in session and session['user'] == para['admin_user']):
        if request.method == 'POST':
            title = request.form.get('title')
            name = request.form.get('name')
            status = request.form.get('status')
            content = request.form.get('content')
            category = request.form.get('category')
            rooms = request.form.get('rooms')
            carpet_area = request.form.get('carpet_area')
            price = request.form.get('price')
            location = request.form.get('location')
            date = request.form.get('date')
            slug = request.form.get('slug')
            features = request.form.get('features')
            img_file = request.form.get('img_file')

            if sno == '0':
                post = Posts(title=title, name=name, status=status, content=content, category=category, rooms=rooms,
                             carpet_area=carpet_area, price=price, location=location, date=datetime.now(), slug=slug,
                             features=features, img1=img_file)
                db.session.add(post)
                db.session.commit()

            else:
                post = Posts.query.filter_by(s_no=sno).first()
                title = title
                name = name
                status = status
                content = content
                category = category
                rooms = rooms
                carpet_area = carpet_area
                price = price
                location = location
                date = datetime.now()
                slug = slug
                features = features
                img1 = img_file
                db.session.commit()
                return redirect('/edit/' + sno)
        post = Posts.query.filter_by(s_no=sno).first()
        return render_template('edit.html', para=para, post=post)
    return render_template('login.html', para=para)


@app.route("/admin_logout", methods=['GET'])
@login_required
def admin_logout():
    session.pop('user')
    return redirect('/dashboard.html')


@app.route("/delete/<string:sno>", methods=['GET', 'POST'])
@login_required
def delete(sno):
    if ('user' in session and session['user'] == para['admin_user']):
        post = Posts.query.filter_by(s_no=sno).first()
        db.session.delete(post)
        db.session.commit()
    return redirect('/dashboard.html')


app.run(debug=True)
