-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 05:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homify`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `s_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` varchar(200) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`s_no`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'wil-sh', 'RITESHJ0023@GMAIL.COM', 'try', 'blah blah blah balh ablh!!!!!!!!!!\r\n', '2023-03-18 10:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `s_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `category` varchar(10) NOT NULL,
  `rooms` varchar(10) DEFAULT NULL,
  `carpet_area` varchar(15) NOT NULL,
  `price` int(10) NOT NULL,
  `location` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `slug` varchar(30) NOT NULL,
  `features` varchar(11) NOT NULL,
  `img1` varchar(15) DEFAULT NULL,
  `img2` varchar(11) DEFAULT NULL,
  `img3` varchar(11) DEFAULT NULL,
  `img4` varchar(11) DEFAULT NULL,
  `img5` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`s_no`, `title`, `name`, `status`, `content`, `category`, `rooms`, `carpet_area`, `price`, `location`, `date`, `slug`, `features`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'New Golden Nest', 'Sonam Classic', 'For Rent', 'New Golden Nest is a well designed and well connected apartment project located in Mira Road And Beyond,Mumbai. The project offers 1 BHK-2 BHK apartments that come with 690 sqft to 720 sqft sizes. The apartments are well designed and come with all the modern amenities. The project is conveniently located close to all the major points of the city and is well connected with all the major roads. The apartments are well connected with all the major shopping centers and are also well connected to Western Express Highway.', 'Flat', '1 BHK', '837 Sq. Ft.', 60, 'bhayander east', '2023-03-12 08:15:11', 'new_golden_nest', '', '0', '', '', NULL, NULL),
(2, 'Avdhoot CHS', '1 BHK Flat For Sale In Avdhoot CHS', 'For Sale', 'Avdhoot CHS is strategically located in Andheri West in the city of Mumbai and is a well-planned project. The project offers Ready To Move units. The commencement certificate of this well-planned project has not been granted. The occupancy certificate of the project not granted, so you can be rest assured. The well-known builder Cooperative Group Housing Society has developed Avdhoot CHS project. Andheri West, Mumbai. is the official address of this project. The pin code of this masterpiece project is 400047. Avdhoot CHS offers a contemporary lifestyle to its residents and is the perfect place to own your dream home.\r\n\r\nAvdhoot CHS Address\r\n\r\nAndheri West, Mumbai. , 400047, is the postal address of Avdhoot CHS in Mumbai.\r\n', 'Flat', '1 BHK', '460 Sq.Ft.', 90, 'Anheri', '2023-03-12 08:15:11', 'Avdhoot-CHS', 'Ready To Mo', '1.jpeg', '2.jpeg', '1.jpeg', '1.jpeg', '1.jpeg'),
(3, 'ETERNIA Oberoi', 'Tower A and B', 'For sale', 'In a city where Space is the ultimate luxury, we give you an abundance of it.\r\nConceived and created by Oberoi Realty - one of India\'s leading real estate companies, Eternia and Enigma offer an elevated living experience with spacious residences and wide-open play areas. Long jogging tracks lead you through verdant gardens and expansive walkways. Stroll through the greenery and let the most enchanting views of Yeoor Hills and Vihar Lake soothe your soul. Experience a truly global lifestyle with more than 30 amenities that offer you the latest in modern living in the lap of nature, yet seamlessly connected to the world outside through existing infrastructure and the upcoming Goregaon Mulund Link Road and the proposed Metro station. Eternia and Enigma have been approved by all leading banks and housing finance companies.\r\n\r\nOur show flats in the towers are open. Come, experience Mulund’s best residences today.', 'Flat', '4 BHK', '1262 Sq.ft', 5, 'Mulund', '2023-03-18 12:31:53', 'Tower-A-and-B-Eternia-Oberoi', 'Gymnasium  ', '0', NULL, NULL, NULL, NULL),
(4, 'Kandivali east', 'Sarova', 'For Rent', 'Experience a heavenly lifestyle at Sarova City, a grand township in the vibrant heart of Kandivali. The project has three towers - Aquila, Aubburn, & Siennaa that house 1.5, 2, and 3 BHK modern apartments. Speckled with vast open spaces and landscaped greens, the township serves as a beautiful sanctuary within the bustling city.', 'Flat', '2BHK', '720 -721.86 Sq.', 206, 'Samtanagar', '2023-03-25 17:16:53', 'new_sarova_siennaa', 'Kandivali M', 'sarova1.JPG', 'sarova2.JPG', 'sarova3.JPG', 'sarova4.JPG', 'sarova5.JPG'),
(5, 'Kandivali east', 'Evershine Tower', ' For Buy', 'The beautiful Evershine Tower\'s commencement certificate has not been granted. The occupancy certificate of the project not granted. Phase 1, Village, Kandivali, EMP-25, Evershine Phase 3, Evershine Millennium Paradise, Thakur Village, East, Mumbai, Maharashtra 400101 is the official address of this project. The project falls under the pincode 400101. At Evershine Tower, you can enjoy a modern lifestyle as all conveniences are easily available.', 'Flat', '3BHK', '787 sqft', 232, 'Thakur village', '2023-03-25 19:26:26', 'new_Evershine Tower_Evershine ', 'Ready To Mo', 'Ever3.JPG', 'Ever1.JPG', 'Ever2.JPG', 'Ever4.JPG', NULL),
(6, 'Kandivali east', 'Bhoomi Hills', 'For Buy', '\r\nBhoomi Hills is one of the popular Residential Developments in Kandivali East neighborhood of Mumbai. It is among the well known Projects of Bhoomi Group. The landscape is beautiful with spacious Houses. It offers us an exclusive 2BHK apartments along with a no. of modular amenities. It is spread over an area of 940 sq.ft. The project is completed', 'Flat', '2BHK', '610 sqft', 125, 'Thakur village', '2023-03-25 20:11:46', 'nwe_bhoomi hills', 'Bhoomi Hill', 'bhumi1.JPG', 'bhumi2.JPG', 'bhumi3.JPG', 'bhumi4.JPG', NULL),
(7, 'Kandivali east', 'Mahadev Tower', ' For Buy', 'Mahadev Tower, Kandivali East, Mumbai enjoys excellent connectivity and houses reputed schools, hospitals as well as malls. For medical assistance, you can visit National Hospital which  is 5.7km away. Kranti Nagar Bus Stop is 3.9km away hence commuting is quite easy. Cafe Coffee Day, DMart, IDBI Bank ATM and Malad Gymkhana Limited are hardly few kms away. Also, excellent connectivity to various modes of public transport is an added advantage.', 'Flat', '3BHK', '1000 sqft', 206, 'Thakur Complex', '2023-03-25 20:38:34', 'new_Mahadev Tower', 'Multiple Sc', 'mahadev1.JPG', 'M2.JPG', 'M3.JPG', NULL, NULL),
(8, 'Kandivali east', 'Challenger Tower', 'For Buy', 'A well-designed residential project in Thakur Village, Kandivali East, Challenger Towers are surrounded by a beautiful landscape. The four towers have 30 storeys built with quality construction material. Offering 2BHK and 3BHK, the complex provides modern-day amenities like swimming pool, gymnasium, sauna, jacuzzi, steam with Yoga Room and various indoor games like billiards, table tennis and more. The excellent location provides good connectivity with Western Express Highway just 2mins and Kandivali Railway Station just 10mins away. To cater to the daily needs, Big Bazar and Thakur Mall are in vicinity.', 'Flat', '3BHK', '1075 sqft', 207, 'Thakur village', '2023-03-26 06:56:52', 'new_Challenger Tower_Tower 1', 'At prime lo', 'ct4.JPG', 'ct1.JPG', 'ct2.JPG', 'ct3.JPG', ''),
(9, 'Kandivali east', ' Suncity', 'For Rent', '\r\nFavourably located in Kandivali East in Mumbai, N G Suncity is a meticulously planned project. This precisely planned N G Suncity project\'s prices are available in the range of Rs. 1. 40 Cr Onwards. It covers an area of 2 Acre giving enough green space to residents. This project has a total of 100 units.', 'Flat', '2BHK', '990 sqft', 33, 'Thakur village', '2023-03-26 07:35:48', 'new_Suncity_N G Suncity', 'Ready To Mo', 'ng1.JPG', 'ng2.JPG', 'ng3.JPG', 'ng4.JPG', 'ng5.JPG'),
(10, 'Mira Road', 'Indralok', 'For Buy', 'Indralok is conveniently situated in the Mira Road, Mumbai and is a project that is well planned. Spread over a vast area of 1 Acre, the project is a well-established one. The project has a total of 50 units, constructed with robust quality.\r\nThe exquisite property offering spacious units is Ready To Move. The residential project features 1 remarkable towers with well-planned units.', 'Flat', '1 BHK', '765 Sq-ft', 77, 'Mira Road', '2023-03-26 08:34:09', 'new_Indralok', 'Ready To Mo', 'i1.JPG', 'i2.JPG', '', '', ''),
(11, 'Mira Road', 'Delta Woods', 'For Buy', 'Positioned at well connected locality Mira Road, Delta Woods is an aesthetically built project of Mumbai. The prices for this diligently designed Delta Woods project are offered in the Rs. 73. 0 Lac - 1. 08 Cr range. It covers an area of 1 Acre giving enough green space to residents. The project features a total of 149 units that are well-ventilated.', 'Flat', '3BHK', '699 sqft', 908, 'Mira Road', '2023-03-26 10:21:10', 'new_Delta Woods', 'Educational', 'd1.JPG', 'd2.JPG', 'd3.JPG', NULL, NULL),
(12, 'Mira Road', 'Silver Oak II', 'For Buy', 'Floor plans are the perfect way to understand how the spaces/rooms of Silver Oak II are structured and help provide a clear picture of the house layout. The properties in Silver Oak II are available in 1 configurations and 1 varied layouts (or floor plans), 2 BHK Flat comes in various sizes of 800 sq. ft super area.', 'Flat', '2BHK', '600 sqft', 93, 'Mira Road', '2023-03-26 13:23:23', 'new_Silver Oak II', 'Ready To Mo', 's1.JPG', 's2.JPG', 's3.JPG', 's4.JPG', ''),
(13, ' Andheri East', 'Hillcrest', 'For Buy', 'Located in the heart of Gurgaon city, Hillcrest’s exquisitely designed units stand to bring joy to its residents’ lives. With stunning views of the Aravalli range and super-sized rooms, comfort and luxury are guaranteed with Hillcrest. Launched in February 2015 and completed in April 2018, these residential units are ready to move. Along with its stunning amenities and panoramic views, the project is also well connected with major employment hubs, educational institutes, hospitals, shopping malls, etc.', 'Flat', '2BHK', '893 sqft', 187, 'Andheri East', '2023-03-26 13:35:15', 'new_Hillcrest', 'Ready To Mo', 'h2.JPG', 'h3.JPG', 'h1.JPG', '', ''),
(14, 'Andheri East', 'Vasant Oasis', 'For Buy', 'Vasant Oasis at Andheri East, Mumbai, offers high-end yet affordable apartment options ranging between Rs. 1.30 Cr - 5.31 Cr. Vasant Oasis is a place where excess is a way of life. Strategically located in Andheri (East), it is a world of choicest conveniences brought together to revitalize your spirit with pure bliss. Multiple towers of 22 storeys each, this residential complex features 1, 2, 3 & 4 BHK with an array of lifestyle amenities.', 'Flat', '5 BHK', '2190 sqft', 685, 'Andheri East', '2023-03-26 14:07:21', 'new_Vasant Oasis', 'Ready To Mo', 'v1.JPG', 'v2.JPG', 'v3.JPG', 'v4.JPG', 'v5.JPG'),
(15, ' Andheri west', 'Asshna Seabliss', 'For Buy', 'Asshna Seabliss, an ambitious project by the Asshna Developers, is set to be constructed in the heart of Mumbai. Being in Andheri, residents will get all the modern tech and facilities available. People who wish to have a better lifestyle can enjoy it at the Asshna Seabliss', 'Flat', '4 BHK', '1985 sqft', 685, 'Andheri west', '2023-03-26 14:32:59', 'new_Asshna Seabliss', 'Asshna Seab', 'a4.JPG', 'a1.JPG', 'a3.JPG', 'a2.JPG', ''),
(16, 'Malad West', 'Royal Lagoon', 'For Buy', 'Reside In A Home That Bestows You & Your Family With The Present Of A Perfect Lifestyle. Unlock The Key To An Address Where The Lifestyle Has Gifts Of Tranquil Living, The Comfort Of Conveniences, Serene Vistas Of Sea And City, Indulgences Curated For Catering To Your Aspirations Of Premium Living.', 'Flat', '2BHK', '639 sqft', 125, 'Malad West, Mumbai, Jankalyan Nagar, Mumbai', '2023-03-26 14:55:56', 'new_Royal Lagoon', 'Ready To Mo', 'l1.JPG', 'l2.JPG', '', '', ''),
(17, 'Malad West', 'Bay Vue', 'For Buy', 'A Lifestlye you truly deserve\" With exceptional exteriors and elegant interiors, Which elevate you to an absolute joyful place. It is the space that loves you back even more with well laid amenities like landscape Garden on terrace, kids play area, party lawn and much to offer. Come home to a delightful lifestyle!  ', 'Flat', '3BHK', '1150 sqft', 209, 'Malad West, Mumbai - Western Mumbai', '2023-03-26 15:17:52', 'new_Bay Vue', 'Ready To Mo', 'b1.JPG', 'b2.JPG', 'b3.JPG', '', ''),
(18, ' Jogeshwari East', 'Ashtavinayak Apartments', 'For Buy', 'Ashtavinayak Apartments is a newly launched residential project which offers spacious 1 BHK apartments with all modern amenities', 'Flat', '1 BHK', '600 sqft', 100, 'jogeshwari east', '2023-03-26 15:30:54', ' new_Ashtavinayak ', 'Excellent c', 'a1.JPG', '', NULL, NULL, NULL),
(19, 'Goregaon West', 'Sushanku Avenue', 'For Buy', 'Sushanku Avenue 36 is a residential development in Goregaon West, Mumbai. The project is built by Sushanku Realty. They provide 1BHK apartments with all necessities.', 'Flat', '1 BHK', '440 sqft', 109, 'Siddharth Nagar,Goregaon west', '2023-03-26 15:58:56', 'new_Sushanku Avenue', 'Smart and c', NULL, NULL, NULL, NULL, NULL),
(20, 'Borivali East', 'Tatva', 'For Buy', 'Tatva stands tall and being the best in class the apartments in Tatva comes with modern facilities and luxurious lifestyle. If you wish to survive in an eco-friendly surrounding then consider buying your home in Tatva. This wonderfully crafted project is offering you a beautiful lifestyle and perfect for investment option where you can get a higher return.', 'Flat', '2BHK', '1028 sqft', 270, 'Nansey Colony, Mumbai', '2023-03-26 16:48:28', 'new_Tatva', 'Ready To Mo', 't1.JPG', 't2.JPG', 't3.JPG', NULL, NULL),
(21, 'Borivali East', 'Oberoi Sky City', 'For Buy', 'Sky City is yet another luxurious property from the acclaimed Oberoi Realty group. Located away from the bustling hubs of the city, amidst a sprawling National Park, it brings its inhabitants closer to nature, while offering excellent connectivity to modern-day essentials. Sprawled over an area of 25 acres, Sky City offers luxury, large format 3BHKs, with a full suite of amenities one comes to expect from a property of such scale. ', 'Flat', '3BHK', '1132 sqft', 390, 'Borivali East', '2023-03-26 17:24:26', 'new_Oberoi Sky City', 'Reside in a', 'o1.JPG', 'o2.JPG', 'o3.JPG', NULL, NULL),
(22, 'Borivali East', 'Signia High', 'For Rent', 'This ongoing project provides marvelously crafted 3 BHK and 4 BHK flats. Signia High floor plans are finished with attractive POP finishing, dry distemper paint, vitrified flooring and anti skid flooring. The flats in Signia High contains stylish modular kitchen along with hob and chimney, wooden laminated flush doors, UPVC sliding windows, premium modular switches and much more.', 'Flat', '5 BHK', '2100 sqft', 1, 'Borivali East', '2023-03-26 17:32:23', 'new_Signia High_sunteck', 'Ready to mo', 'r1.JPG', 'r2.JPG', 'r3.JPG', NULL, NULL),
(23, 'Kandivali east', 'Gundecha', 'For Rent', 'Situated at a prime location of Kandivali East, Gundecha is a meticulously designed project of Mumbai. Enjoy a niche living experience in this complex with units available from Rs. 1. 70 Cr Onwards. The carefully laid out units of this Residential complex are sure to mesmerize most buyers. The project is smartly constructed, and all the units are Ready To Move. The units offered are Flat, which have been developed to provide complete satisfaction.', 'Flat', '1 BHK', '366 sqft', 28, 'Thakur village', '2023-03-26 17:45:19', 'new_Gundecha', 'Ready To Mo', 'gd2.JPG', 'gd3.JPG', 'gd4.JPG', NULL, NULL),
(24, 'Kandivali east', 'Evershine Crown', 'For Rent', 'Evershine Crown Kandivali East, Mumbai flats feature European style designer doors, fire resistant wiring, granite kitchen platform, anodized aluminum windows and branded bathroom fixtures. The luxurious living rooms are adorned with stunning Italian marble flooring, whereas the bedrooms are outfitted with appealing wooden flooring.', 'Flat', '3BHK', '860 sqft', 60, 'Thakur village', '2023-03-26 18:05:59', 'new_Evershine Crown', 'Infrastruct', 'gc1.JPG', 'gc2.JPG', NULL, NULL, NULL),
(25, 'Kandivali west', 'Ruparel Sky Greens', 'For Buy', 'Ruparel Sky Greens is an iconic project 1BHK and 2BHK fully automated residential apartments boasting world class facilities. This project is a gated community featuring 4 tier security and round the clock CCTV surveillance. There are an array of exquisite leisure and recreational facilities that gives the residents an opportunity to enjoy all the best things that this project and as such life has to offer', 'Flat', NULL, '560 sqft', 129, 'Kandivali west', '2023-03-26 18:16:45', 'Ruparel Sky Greens', 'Ready To Mo', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `s_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `category` varchar(10) NOT NULL,
  `rooms` varchar(10) DEFAULT NULL,
  `carpet__area` varchar(15) NOT NULL,
  `price` int(10) NOT NULL,
  `location` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `slug` varchar(30) NOT NULL,
  `feature` varchar(11) NOT NULL,
  `img1` int(200) NOT NULL,
  `img2` varchar(11) NOT NULL,
  `img3` varchar(11) NOT NULL,
  `img4` varchar(11) DEFAULT NULL,
  `img5` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`s_no`, `title`, `name`, `content`, `category`, `rooms`, `carpet__area`, `price`, `location`, `date`, `slug`, `feature`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'New Golden Nest', 'Sonam Classic', 'New Golden Nest is a well designed and well connected apartment project located in Mira Road And Beyond,Mumbai. The project offers 1 BHK-2 BHK apartments that come with 690 sqft to 720 sqft sizes. The apartments are well designed and come with all the modern amenities. The project is conveniently located close to all the major points of the city and is well connected with all the major roads. The apartments are well connected with all the major shopping centers and are also well connected to Western Express Highway.', 'Flat', '1 BHK', '837 Sq. Ft.', 60, 'bhayander east', '2023-03-12 08:15:11', 'new_golden_nest', '', 0, '', '', NULL, NULL),
(2, 'Avdhoot CHS', '1 BHK Flat For Sale In Avdhoot CHS', 'Avdhoot CHS is strategically located in Andheri West in the city of Mumbai and is a well-planned project. The project offers Ready To Move units. The commencement certificate of this well-planned project has not been granted. The occupancy certificate of the project not granted, so you can be rest assured. The well-known builder Cooperative Group Housing Society has developed Avdhoot CHS project. Andheri West, Mumbai. is the official address of this project. The pin code of this masterpiece project is 400047. Avdhoot CHS offers a contemporary lifestyle to its residents and is the perfect place to own your dream home.\r\n\r\nAvdhoot CHS Address\r\n\r\nAndheri West, Mumbai. , 400047, is the postal address of Avdhoot CHS in Mumbai.\r\n', 'Flat', '1 BHK', '460 Sq.Ft.', 90, 'Anheri', '2023-03-12 08:15:11', 'Avdhoot-CHS', 'Ready To Mo', 0, '2.jpeg', '1.jpeg', '1.jpeg', '1.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
