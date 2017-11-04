-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 04, 2017 at 10:22 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Classroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `d_ID` varchar(20) NOT NULL,
  `Code` varchar(20) NOT NULL,
  `Faculty_ID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Credit` int(10) NOT NULL,
  `Contact_hours` float NOT NULL,
  `Year` int(10) NOT NULL,
  `Semester` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`d_ID`, `Code`, `Faculty_ID`, `Name`, `Credit`, `Contact_hours`, `Year`, `Semester`) VALUES
('iitr_ce', 'ce333', 'iitr_divij', 'divij bansal', 2, 2.5, 2015, 6),
('iitr_ce', 'ce419', 'iitr_prakriti', 'prakriti sharma', 4, 4.5, 2013, 4),
('iitr_civil', 'civil156', 'iitr_manoj', 'manoj varma', 4, 4.5, 2017, 1),
('iitr_civil', 'civil245', 'iitr_palak', 'palak sharma', 3, 3.5, 2017, 3),
('iitr_cse', 'csn351', 'iitr_ranita', 'ranita biswas', 4, 4.5, 2017, 5),
('iitr_cse', 'csn361', 'iitr_sk', 'sandeep kumar', 2, 4.5, 2017, 5),
('iitr_ee', 'ee269', 'iitr_mandeep', 'mandeep garg', 3, 3.5, 2016, 4),
('iitr_ee', 'ee346', 'iitr_shinde', 'shinde kumar ', 4, 4.5, 2017, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `ID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `Adress` varchar(200) NOT NULL,
  `Major_expertise` varchar(50) NOT NULL,
  `Year_of_establishment` int(4) NOT NULL,
  `Small_image_Url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`ID`, `Name`, `Description`, `Adress`, `Major_expertise`, `Year_of_establishment`, `Small_image_Url`) VALUES
('iitr_ce', 'Chemical Engineering', 'The Department of Chemical Engineering was established in 1963 with an Undergraduate programme in Chemical Engineering. A Master’s course in Equipment and Plant Design was initiated in 1970. Later on, two new Master’s courses namely Industrial Pollution Abatement and Advanced Transfer Processes were inducted. Subsequently, the specialisation of Equipment and Plant Design was redesigned, updated and re-christened as Computer Aided Process Plant Design. At present, the Department is running three post-graduate programmes leading to M.Tech. (Chem.) degree with specialization in Computer Aided Process Plant Design, Industrial Pollution Abatement and Industrial Safety & Hazards Management. A five-year integrated programme on Hydrocarbon Engineering offering dual degree of B.Tech. (Chem. Engg.) and M.Tech. (Hydrocarbon Engineering) has been started from the session 2003-04 . The Department offers high level research programme in diverse areas of Chemical Engineering. It has been providing consultancy to chemical and allied industries in several areas.\r\n\r\n \r\n\r\nThe Department of Chemical Engineering at IIT, Roorkee is a comparatively smaller department, but offers large number of academic programmes with a large output of B.Tech and PG/Research students. It is the first department in the country to have started an innovative Masters programme in Industrial Pollution Abatement and Industrial Safety and Hazards Management. It is also the first department in the country to have started an integrated Dual Degree programme with Masters Programme in Hydrocarbon Engineering. The department has set very high standards in teaching and has engaged in useful and high level research exemplified by research papers in high impact peer-reviewed journals. Since the transformation of the University of Roorkee into an IIT, the Department has been engaged in the development of academic teaching and research infrastructure, creation of laboratories in analytical/instrumental analysis, modeling and simulation, safety and hydrocarbon engineering. The recent developments in sister disciplines and biological sciences have been imbedded in the curricular structure and are being adopted in our research activities.', 'Department of Chemical Engineering,\r\nIndian Institute of Technology, Roorkee\r\nRoorkee – 247 667 (Uttarakhand), India', 'Biochemical Processing ,Biomass Gasification', 1963, 'https://www.iitr.ac.in/mtic/images/custom/slider-3.jpg'),
('iitr_civil', 'Civil Engineering', 'The Department of Civil Engineering at the Indian Institute of Technology Roorkee (Formerly University of Roorkee) is the oldest and the largest in the country and is considered as the best in the country for education in Civil Engineering. It was established on October 19, 1847 as Roorkee College in renamed as the Thomason College in 1854. The department is producing several eminent engineers who are making notable contributions in the planning and execution of Civil Engineering projects in India as well as abroad.\r\n\r\nThe department offers a four-year course leading to the Bachelors Degree in Civil Engineering and two-year courses leading to Master’s degree in eight major specialisations of civil engineering (viz., Bulding Science and Technology, Computer Aided Design, Environmental Engineering, Geomatics Engineering, Geotechnical Engineering, Hydraulics Engineering, Structural Engineering and Transportation Engineering). These programmes are supported with strong doctoral programmes in all the specialisations. More than 100 Ph. D. research scholars work in the department on emerging research problems. The department has justifiably provided itself on the quality of its academic programmes and is keeping pace with the latest developments in engineering education.', 'Department of Civil Engineering\r\nIndian Institute of Technology Roorkee\r\nRoorkee-247667\r\nUttarakhand, India.', 'Geotechnical Hydraulics Structural Engineering ', 1847, 'https://www.iitr.ac.in/departments/CE/assets/images/top1.jpg'),
('iitr_cse', 'Computer Science ', 'In view of the increasing importance of the Electronics Engineering discipline, a separate Department of Electronics & Communication Engineering was established in 1964 to offer Bachelor of engineering degree in Electronics & Communication and Master of Engineering degrees in (a) Advanced Electronics and (b) Applied Electronics & Servomechanisms. In 1968, the postgraduate programme was restructured with specializations in the areas of Communication Systems, Control and guidance, Microwaves and Radar, and Solid State Electronics. Two new undergraduate and postgraduate programmes in Computer Science and Technology were started in the year 1982. Keeping in view the activities of the Department, the name was changed to Department of Electronics and Computer Engineering. In January 2013, the Department of Electronics and Computer Engineering was been bifurcated into two separate departments i.e. ''Electronics and Communication Engineering'' and ''Computer Science and Engineering''.\r\n\r\nThe Department has always been on a high growth path and to keep pace with the current technological trends, the Department has started an M.Tech. programme in Information Technology.\r\n\r\nThe Department has strong research groups in the broad areas of:\r\n\r\nComputer Science and Engineering\r\nInformation Technology', 'Department of Computer Science and Engineering\r\nIndian Institute of Technology Roorkee\r\nRoorkee-247667\r\nUttarakhand, India', 'Computer Science & Engineering & IT', 2013, 'https://www.iitr.ac.in/departments/CSE/assets/images/top5.jpg'),
('iitr_ee', 'Electrical Engineering', 'Presently the department is running the courses at both the undergraduate and the postgraduate levels and providing excellent facilities to carry out research work for Doctor of Philosophy (Ph.D.) degree, R&D work for sponsored and consultancy projects and testing and consultancy work for industrial problems.This is, of course, in addition to the regular courses in Bachelor of Technology (B.Tech.) and Master of Technology (M.Tech.) that are a part of the curriculum. So, we welcome you to this arena of the world which holds the pride of being a pioneer in the area of Electrical Engineering even when most of the world was evolving the subject .of Electrical Engineering was founded in the year 1957 under aegis of the Government of India. Since then Department of Electrical Engineering at IIT Roorkee (formerly University of Roorkee) has made landmark contributions to the development of cutting edge technology in various branches.  ', 'Department of Electrical Engineering\r\nIndian Institute of Technology\r\nRoorkee-247667\r\nUttarakhand\r\n\r\n', 'Fuzzy logic applications in robotics, ', 1900, 'https://www.iitr.ac.in/departments/ME/assets/images/top1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Dept_event`
--

CREATE TABLE `Dept_event` (
  `e_ID` varchar(20) NOT NULL,
  `d_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Dept_event`
--

INSERT INTO `Dept_event` (`e_ID`, `d_ID`) VALUES
('general_quiz', 'iitr_ce'),
('mental_health_quiz', 'iitr_civil'),
('newton_movie', 'iitr_ee'),
('rally_rivers', 'iitr_civil'),
('workshop_on_ei', 'iitr_cse');

-- --------------------------------------------------------

--
-- Table structure for table `Dept_images`
--

CREATE TABLE `Dept_images` (
  `d_ID` varchar(20) NOT NULL,
  `Carousel_image_Url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Dept_images`
--

INSERT INTO `Dept_images` (`d_ID`, `Carousel_image_Url`) VALUES
('iitr_ce', 'https://cheme.mit.edu/wp-content/uploads/2017/01/visualizing.jpg'),
('iitr_ce', 'https://ocw.mit.edu/courses/chemical-engineering/dhp_10.jpg'),
('iitr_civil', 'https://cee.mit.edu/wp-content/uploads/Sami_blog.jpg'),
('iitr_civil', 'https://ocw.mit.edu/courses/civil-and-environmental-engineering/dhp_1.jpg'),
('iitr_cse', 'https://www.iitr.ac.in/departments/CSE/assets/images/top4.jpg'),
('iitr_cse', 'https://www.iitr.ac.in/departments/CSE/assets/images/top5.jpg'),
('iitr_ee', 'https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/dhp_6.jpg'),
('iitr_ee', 'https://www.eecs.mit.edu/sites/default/files/cards/images-wide/MIT-ICU-Intervene_0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Dept_notice`
--

CREATE TABLE `Dept_notice` (
  `d_ID` varchar(20) NOT NULL,
  `n_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Dept_notice`
--

INSERT INTO `Dept_notice` (`d_ID`, `n_ID`) VALUES
('iitr_ce', 'arihanttextiles'),
('iitr_civil', 'SmartSolar'),
('iitr_cse', 'CitiCampusInnovat'),
('iitr_cse', 'Yodlee'),
('iitr_ee', 'MCMScholar');

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE `Events` (
  `ID` varchar(20) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Post_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Central_image_Url` varchar(1000) NOT NULL,
  `Event_start_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Event_end_timestampm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Description` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`ID`, `Title`, `Post_timestamp`, `Central_image_Url`, `Event_start_timestamp`, `Event_end_timestampm`, `Description`) VALUES
('general_quiz', 'general quiz', '2017-11-04 04:30:00', 'https://channeli.in/media/events/uploads/culsoc/22339500_10214541575921501_5383480171260546519_o.jpg', '2017-11-10 03:30:00', '2017-11-10 06:00:00', 'After 30 days, 9000 kilometres, 16 states and 23 major events, Rally for Rivers will be culminating in Delhi on 2nd October in presence our Chief Guest, Hon''ble Vice President of India, Shri Venkaiah Naidu and Union Minister, Dr. Harsh Vardhan.\r\nThe event would observe some amazing performances by Sonu Nigan, Vilas Nayak (Asia''s Fastest Painting Artist) and Anamika Singh (founder of ADA'),
('mental_health_quiz', 'mental health quiz', '2017-11-02 21:30:00', 'https://channeli.in/media/events/uploads/sac/mentalhealthquiz-fb-cover.jpg', '2017-11-16 10:30:00', '2017-11-04 12:30:00', 'IITR! Are you ready to be quizzed not about facts & events but about the thoughts, you''ve never had? Well, we’ve got just the thing for you. We''re proud to present the YourDOST Mental Health Quiz. Accept the challenge today at http://bit.ly/IITRQuiz. You could e'),
('newton_movie', 'Screening of movie N', '2017-11-05 06:30:00', 'https://channeli.in/media/events/uploads/cinema/22310603_1495007297252760_6356343388720852965_n.0.jpg', '2017-11-15 08:30:00', '2017-11-04 10:30:00', 'https://channeli.in/media/events/uploads/cinema/22310603_1495007297252760_6356343388720852965_n.0.jpg'),
('rally_rivers', 'Rally for Rivers rea', '2017-11-01 18:50:00', 'https://channeli.in/media/events/uploads/Miscellaneous/rfr_haridwar.png', '2017-11-03 02:30:00', '2017-11-03 04:30:00', 'In its last phase, the Rally reaches Haridwar.\r\nOur Chief Guest, *Hon''ble Chief Minister of Uttarakhand Shri Trivendra Singh Rawat and Guest of Honour Baba Ramdev, will grace the event and pledge their support for rejuvenating our rivers in Sadhguru''s presence.\r\nWe invite you to witness the event and be a part of this cause that is bigger than any of us.\r\nRegister now: http://rallyforrivers.org/haridwar\r\nDon''t forget to give a missed call @ 8000980009 and register your vote to Save Our Rivers.\r\nFor any Queries, Contact: Rajesh 8860602347'),
('workshop_on_ei', 'Technology Workshop ', '2017-11-07 19:30:00', 'https://channeli.in/media/events/uploads/cig/22218086_1284591138319702_946431449_o.jpg', '2017-11-17 18:30:00', '2017-11-24 18:30:00', 'Samsung in collaboration with IIT Rookee brings for you an opportunity to explore a whole new world of possibilities with Technology Workshop on "Advanced Embedded Intelligence" from the experts of corporate world.\r\nThis workshop is open to all the students irrespective of year and branches (B.tech/ M.tech/ Phd).\r\nPre-registrations are mandatory for attending the workshop and getting the certificates.\r\nDetails of the event and bio of the speakers-https://goo.gl/XArakY\r\nLink to google form for registration : https://goo.gl/1tMZC7');

-- --------------------------------------------------------

--
-- Table structure for table `Event_images`
--

CREATE TABLE `Event_images` (
  `e_ID` varchar(20) NOT NULL,
  `Event_image_Url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Event_images`
--

INSERT INTO `Event_images` (`e_ID`, `Event_image_Url`) VALUES
('general_quiz', 'https://channeli.in/media/events/uploads/culsoc/22339500_10214541575921501_5383480171260546519_o.jpg'),
('mental_health_quiz', 'https://channeli.in/media/events/uploads/sac/mentalhealthquiz-fb-cover.jpg'),
('newton_movie', 'https://channeli.in/media/events/uploads/cinema/22310603_1495007297252760_6356343388720852965_n.0.jp'),
('rally_rivers', 'https://channeli.in/media/events/uploads/Miscellaneous/rfr_haridwar.png'),
('workshop_on_ei', 'https://channeli.in/media/events/uploads/cig/22218086_1284591138319702_946431449_o.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Faculty`
--

CREATE TABLE `Faculty` (
  `Faculty_ID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone_No` varchar(20) NOT NULL,
  `Email_ID` varchar(200) NOT NULL,
  `DOB` date NOT NULL,
  `Designation` varchar(2000) NOT NULL,
  `Date_of_joining` date NOT NULL,
  `Course_specialisation` varchar(50) NOT NULL,
  `Image_Url` varchar(1000) NOT NULL,
  `Salary` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Faculty`
--

INSERT INTO `Faculty` (`Faculty_ID`, `Name`, `Phone_No`, `Email_ID`, `DOB`, `Designation`, `Date_of_joining`, `Course_specialisation`, `Image_Url`, `Salary`) VALUES
('iitr_divij', 'divij bansal', '9806781234', 'divijbansal@gmail.com', '1965-09-03', 'associate professor', '1997-11-01', 'ce333', 'http://people.iitr.ernet.in/facultyphoto/chandfch.jpg', 120000),
('iitr_mandeep', 'mandeep garg', '8888777712', 'mandeepgarg@gmail.com', '1968-02-21', 'assistant professor', '1997-11-09', 'ee269', 'http://people.iitr.ernet.in/facultyphoto/sudip_2.jpg', 70000),
('iitr_manoj', 'manoj varma', '7893217658', 'manojvarma@gmail.com', '1963-09-22', 'professor', '1987-09-20', 'civil156', 'http://people.iitr.ernet.in/facultyphoto/amitdfch.jpg', 200000),
('iitr_palak', 'palak sharma', '7771234765', 'palaksharma@gmail.com', '1982-10-24', 'assistant professor', '2013-09-03', 'civil245', 'http://people.iitr.ernet.in/facultyphoto/Untitled-1_copy.jpg', 70000),
('iitr_prakriti', 'prakriti sharma', '8901234765', 'prakritisharma@gmail.com', '1977-11-07', 'associate professor', '1997-11-09', 'ce419', 'http://people.iitr.ernet.in/facultyphoto/ghoshfch_0.jpg', 70000),
('iitr_ranita', 'ranita biswas', '8796758899', 'ranitabiswas@gmail.com', '1976-07-03', 'assistant professor', '2012-06-21', 'csn351', 'http://people.iitr.ernet.in/facultyphoto/ranitafcs_2.jpg', 70000),
('iitr_shinde', 'shinde kumar', '7778674572', 'shindekumar@gmail.com', '1974-05-31', 'associate professor', '2001-06-20', 'ee346', 'http://people.iitr.ernet.in/facultyphoto/kartik_0.JPG', 120000),
('iitr_sk', 'sandeep kumar', '9998887773', 'sandeepkumar@gmail.com', '1967-10-03', 'assistant professor', '2011-11-28', 'csn361', 'http://people.iitr.ernet.in/facultyphoto/sgargfec.jpg', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
  `Name` varchar(100) NOT NULL,
  `Group_ID` varchar(20) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `Year_of_formation` int(4) NOT NULL,
  `Faculty_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Groups`
--

INSERT INTO `Groups` (`Name`, `Group_ID`, `Description`, `Year_of_formation`, `Faculty_ID`) VALUES
('iitr_img', 'img', 'We are a group of students who try to make the digital stay of people at IITR as comfortable as possible.', 2002, 'iitr_ranita'),
('iitr_mdg', 'mdg', 'we make apps', 2010, 'iitr_manoj'),
('iitr_pag', 'pag', 'We strive to nurture the coding culture of IIT Roorkee. As a bunch of students, we are enthusiastic about programming and we love it.', 2008, 'iitr_mandeep'),
('iitr_sds', 'sdslabs', 'SDSLabs is a student group that constantly tries to innovate and foster technical activities in campus. Our members work in C++, Go, PHP, Ruby, Node.js, Python, sometimes even delving into socket level programming.\r\n\r\nWe conduct lectures and workshops on all these topics and also conduct monthly competitions on our various self developed applications.', 2006, 'iitr_sk'),
('iitr_wona', 'wona', 'Watch Out! is the official campus news body of the Indian Institute of Technology, Roorkee run by students under the aegis of the Dean of Sponsored Research and Industrial Consultancy (SRIC), IIT Roorkee. 24 years after it’s conception, Watch Out! has grown to offer news and commentary from around the campus on it’s website in conjunction with a semesterly print issue.', 1995, 'iitr_divij');

-- --------------------------------------------------------

--
-- Table structure for table `Hostel`
--

CREATE TABLE `Hostel` (
  `ID` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Year_of_establishment` int(4) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Faculty_ID` varchar(20) NOT NULL,
  `Nof_Students` int(20) NOT NULL,
  `Image_Url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Hostel`
--

INSERT INTO `Hostel` (`ID`, `Name`, `Year_of_establishment`, `Type`, `Faculty_ID`, `Nof_Students`, `Image_Url`) VALUES
('iitr_govind', 'govind', 1970, 'male', 'iitr_sk', 800, 'https://www.iitr.ac.in/campus_life/uploads/Image/DSC_0019.JPG'),
('iitr_kasturba', 'kasturba', 1960, 'female', 'iitr_ranita', 400, 'https://www.iitr.ac.in/campus_life/uploads/Image/DSC_0108.JPG'),
('iitr_rajendra', 'rajendra', 1980, 'male', 'iitr_prakriti', 1000, 'https://www.iitr.ac.in/campus_life/uploads/Image/DSC_0070.JPG'),
('iitr_rajiv', 'rajiv', 2010, 'male', 'iitr_mandeep', 600, 'https://www.iitr.ac.in/campus_life/uploads/Image/DSC_0068.JPG'),
('iitr_ravindra', 'ravindra', 1940, 'male', 'iitr_manoj', 700, 'https://www.iitr.ac.in/campus_life/uploads/Image/DSC_0031.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `News`
--

CREATE TABLE `News` (
  `ID` varchar(20) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Post_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Description` varchar(10000) NOT NULL,
  `Image_Url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `News`
--

INSERT INTO `News` (`ID`, `Title`, `Post_timestamp`, `Description`, `Image_Url`) VALUES
('arihanttextiles ', 'Arihant Textiles ', '2017-10-31 18:30:00', 'To facilitate all those who are appearing for placements, Arihant Textiles will be putting up a stall. The vendor is offering hefty discounts on formal suits - Men & Women and have already extended their services to IITB, IITD, IITG etc. All interested students can fill the google form so that the date can be finalized and the vendor can gauge the response: https://goo.gl/forms/pvorznUFPWkkuVGh2', 'https://channeli.in/media/notices/uploads/SAC/sac/22829203_10203570390896367_6421918201794664743_o.jpg'),
('CitiCampusInnovate', 'Citi Campus Innovate', '2017-10-30 18:30:00', 'Citi Campus Innovation Challenge 2017- Round 1_Finalists', 'https://channeli.in/media/notices/uploads/Placement%20Office/thakur/Citi.jpg'),
('MCMScholar', 'MCM Scholarship', '2017-10-30 18:30:00', 'Submission of required documents of MCM', 'https://channeli.in/media/notices/pdfimages/Uncomplete%20forms%20of%20MCM.png'),
('SmartSolar', 'Smart-World-Solar', '2017-10-30 18:30:00', 'Smart-World- Solar-for-IIT-Roorkee', 'https://channeli.in/media/notices/pdfimages/Smart-World_Solar-for-IIT-Roorkee_EFY_Nov-17.png'),
('Yodlee', 'Yodlee:Submission', '2017-11-02 18:30:00', 'Yodlee (Associate Member Technical Staff): Submission of biodata for final year students', 'https://www.yodlee.com/wp-content/uploads/2016/03/working-yodlee-india-team.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `Enrollment_No` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `isAlmuni` tinyint(1) NOT NULL,
  `Year` int(4) NOT NULL,
  `Semester` int(10) NOT NULL,
  `Branch` varchar(100) NOT NULL,
  `Dept_ID` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Phone_No` varchar(20) NOT NULL,
  `Email_Id` varchar(100) NOT NULL,
  `UgPg` varchar(10) NOT NULL,
  `Hostel_Id` varchar(20) NOT NULL,
  `Hostel_Room_No` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`Enrollment_No`, `Name`, `isAlmuni`, `Year`, `Semester`, `Branch`, `Dept_ID`, `DOB`, `Phone_No`, `Email_Id`, `UgPg`, `Hostel_Id`, `Hostel_Room_No`) VALUES
('11114032', 'HARJOT SINGH OBERAI', 1, 2013, 8, 'computer science', 'iitr_cse', '1993-10-16', '9998887775', 'harjotsingh@gmail.com', 'pg', 'iitr_rajiv', 'g67'),
('13112042', 'SHIVAM JINDAL', 0, 2013, 8, 'chemical engineering', 'iitr_ce', '1995-07-18', '9996757773', 'shivamjindal@gmail.com', 'ug', 'iitr_rajiv', 'b78'),
('14104049', 'Parul Meena', 0, 2016, 4, 'chemical engineering', 'iitr_ce', '1996-10-15', '8888779918', 'parulmeena@gmail.com', 'ug', 'iitr_kasturba', 'f45'),
('14113049', 'ROHIT KUMAR', 1, 2015, 6, 'chemical engineering', 'iitr_ce', '1996-01-24', '9998884573', 'rohitkumar@gmail.com', 'pg', 'iitr_rajendra', 'c56'),
('14114049', 'NITIN GAURAV SINGH', 0, 2016, 7, 'computer science', 'iitr_cse', '1995-08-22', '77786734798', 'nitinsingh@gmail.com', 'pg', 'iitr_rajiv', 't43'),
('14115004', 'anish chaitanya', 0, 4, 7, 'electrical', 'iitr_ee', '1996-12-27', '9595444949', 'anishchaitu@gmail.com', 'ug', 'iitr_rajendra', 'g-47'),
('14117004', 'revant tutika', 0, 4, 7, 'civil', 'iitr_civil', '1996-02-27', '959544499', 'tutikabhaiya@gmail.com', 'ug', 'iitr_rajendra', 'cs-47'),
('15114003', 'ABHISHEK SHARMA', 0, 2017, 5, 'computer science', 'iitr_cse', '1997-06-03', '8888777718', 'abhisheksharma@gmail.com', 'ug', 'iitr_govind', 's83'),
('15114045', 'KAMAL KANT', 0, 2015, 3, 'computer science', 'iitr_cse', '1998-09-03', '7778674598', 'kamalkant@gmail.com', 'ug', 'iitr_rajendra', 's22'),
('15114072', 'TUTIKA REVANTH KUMAR', 0, 2017, 5, 'chemical engineering', 'iitr_ce', '1997-06-16', '7786730798', 'revanthkumar@gmail.com', 'ug', 'iitr_govind', 'f88'),
('15115015', 'sagar atla', 0, 3, 5, 'electrical', 'iitr_ee', '1997-11-08', '9454151124', 'atlasagar@gmail.com', 'ug', 'iitr_rajiv', 'bs-123'),
('15115066', 'sai kiran', 0, 2, 3, 'electrical', 'iitr_ee', '1998-01-07', '9595596949', 'kiransaikiran@gmail.com', 'ug', 'iitr_govind', 's-80'),
('15117013', 'vamsi krishna', 0, 3, 5, 'civil', 'iitr_civil', '1997-10-08', '9454161124', 'vamsikrishna@gmail.com', 'ug', 'iitr_rajiv', 'bs-13'),
('16115026', 'manisha jinta', 0, 2, 3, 'electrical', 'iitr_ee', '1993-12-27', '9544449049', 'jinatamanisha@gmail.com', 'pg', 'iitr_kasturba', 'f-07'),
('16117026', 'anamika reddy', 0, 2, 3, 'civil', 'iitr_civil', '1993-02-14', '9444449079', 'anamika123@gmail.com', 'pg', 'iitr_kasturba', 'g-97'),
('16117066', 'raj nayak', 0, 2, 3, 'civil', 'iitr_civil', '1998-02-17', '9695596949', 'sairajnaik@gmail.com', 'ug', 'iitr_govind', 'as-80');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`d_ID`,`Code`,`Faculty_ID`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Dept_event`
--
ALTER TABLE `Dept_event`
  ADD PRIMARY KEY (`e_ID`,`d_ID`);

--
-- Indexes for table `Dept_images`
--
ALTER TABLE `Dept_images`
  ADD PRIMARY KEY (`d_ID`,`Carousel_image_Url`);

--
-- Indexes for table `Dept_notice`
--
ALTER TABLE `Dept_notice`
  ADD PRIMARY KEY (`d_ID`,`n_ID`);

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Event_images`
--
ALTER TABLE `Event_images`
  ADD PRIMARY KEY (`e_ID`,`Event_image_Url`);

--
-- Indexes for table `Faculty`
--
ALTER TABLE `Faculty`
  ADD PRIMARY KEY (`Faculty_ID`);

--
-- Indexes for table `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`Group_ID`);

--
-- Indexes for table `Hostel`
--
ALTER TABLE `Hostel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `News`
--
ALTER TABLE `News`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Enrollment_No`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
