

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `cabbooking`

-- Table structure for table `contact_entries`
--

CREATE TABLE `contact_entries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_entries`
--

INSERT INTO `contact_entries` (`id`, `name`, `email`, `message`) VALUES
(1, 'abhi', 'admin@admin.com', 'hi'),
(2, 'abhi', 'admin@admin.com', 'hiiiiii'),
(3, ' roll no 2 name abhi', 'admin@admin.com', 'hhhha');

-- --------------------------------------------------------

--
-- Table structure for table `tms_admin`
--

CREATE TABLE `tms_admin` (
  `a_id` int(20) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_admin`
--

INSERT INTO `tms_admin` (`a_id`, `a_name`, `a_email`, `a_pwd`) VALUES
(1, 'System Admin', 'admin@gmail.com', 'Pass@123');

-- --------------------------------------------------------

--
-- Table structure for table `tms_feedback`
--

CREATE TABLE `tms_feedback` (
  `f_id` int(20) NOT NULL,
  `f_uname` varchar(200) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_feedback`
--

INSERT INTO `tms_feedback` (`f_id`, `f_uname`, `f_content`, `f_status`) VALUES
(4, 'user sonawane ', 'GOOD CABS', '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_pwd_resets`
--

CREATE TABLE `tms_pwd_resets` (
  `r_id` int(20) NOT NULL,
  `r_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_pwd_resets`
--

INSERT INTO `tms_pwd_resets` (`r_id`, `r_email`) VALUES
(3, 'lankeabhishek2003@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tms_syslogs`
--

CREATE TABLE `tms_syslogs` (
  `l_id` int(20) NOT NULL,
  `u_id` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_ip` varbinary(200) NOT NULL,
  `u_city` varchar(200) NOT NULL,
  `u_country` varchar(200) NOT NULL,
  `u_logintime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_user`
--

CREATE TABLE `tms_user` (
  `u_id` int(20) NOT NULL,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_phone` varchar(200) NOT NULL,
  `u_addr` varchar(200) NOT NULL,
  `u_category` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_car_type` varchar(200) NOT NULL,
  `u_car_regno` varchar(200) NOT NULL,
  `u_car_bookdate` varchar(200) NOT NULL,
  `u_car_book_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_user`
--

INSERT INTO `tms_user` (`u_id`, `u_fname`, `u_lname`, `u_phone`, `u_addr`, `u_category`, `u_email`, `u_pwd`, `u_car_type`, `u_car_regno`, `u_car_bookdate`, `u_car_book_status`) VALUES
(13, 'Pratik', 'Sonawane', '8866221987', 'Yeola', 'User', 'clint@gmail.com', 'pass123', 'Mini', 'MH15AS5586', '2024-03-19', 'Approved'),
(14, 'abhi', 'lanke', '8975121184', 'nashik', 'User', 'clint2@gmail.com', '123456789', '', '', '', ''),
(15, 'kunal', 'sonawane', '8877654312', 'Niphad', 'User', 'admin2@gmail.com', '987654321', '', '', '', ''),
(16, 'Krushna', 'Sonawane', '8765317754', 'Niphad', 'Driver', 'Krushna@gmail.com', 'Pass@123', '', '', '', ''),
(17, 'Kunal', 'Nikam', '8976421165', 'Nashik', 'Driver', 'Kunal@gmail.com', 'Pass@123', '', '', '', ''),
(18, 'Abhi', 'Lanke', '8975121184', 'Nashik', 'Driver', 'admin@gmail.com', 'Pass@123', '', '', '', ''),
(19, 'Dhiraj', 'Aher', '7654381123', 'Yeola', 'Driver', 'Dhiraj@gmail.com', 'Pass@123', '', '', '', ''),
(20, 'Arun', 'Boraje', '9987665432', 'Kopargaon', 'Driver', 'arun@gmail.com', 'Pass@123', '', '', '', ''),
(21, 'Amol', 'Hiwale', '9876321176', 'Nashik', 'Driver', 'Amol@gmail.com', 'Pass@123', '', '', '', ''),
(22, 'Ganesh', 'Sholshe', '9876543891', 'Kolhapur', 'Driver', 'Ganesh@gmail.com', 'Pass@123', '', '', '', ''),
(23, 'KISHOR ', 'HARODE', '7654931176', 'Niphad', 'Driver', 'kishor@gmail.com', 'Pass@123', '', '', '', ''),
(24, 'Shubham ', 'Pimple', '9843992256', 'Kolhapur', 'Driver', 'shubham@gmail.com', 'Pass@123', '', '', '', ''),
(25, 'YASH', 'KOTE', '9864126645', 'Nashik', 'Driver', 'yash@gmail.com', 'Pass@123', '', '', '', ''),
(26, 'BALKRUSHNA', 'GAIKAWAD', '8764532214', 'YEOLA', 'Driver', 'bal@gmail.com', 'Pass@123', '', '', '', ''),
(27, 'Gokul', 'Pawar', '8765439987', 'Yeola', 'Driver', 'gokul@gmail.com', 'Pass@123', '', '', '', ''),
(28, 'Amol', 'Ingle', '8765983255', 'nashik', 'User', 'Amol@gmail.com', 'Pass@123', '', '', '', ''),
(29, 'Gurunath', 'Kolhe', '8755392054', 'Niphad', 'Driver', 'gurunath@gmail.com', 'Pass@123', '', '', '', ''),
(30, 'RUSHI', 'PABLE', '9853015738', 'Yeola', 'Driver', 'rushi@gmail.com', 'Pass@123', '', '', '', ''),
(31, 'Vikas ', 'Pable', '8975418865', 'Nashik', 'Driver', 'vikas@gmail.com', 'Pass@123', '', '', '', ''),
(32, 'Nandu', 'lanke', '8765093324', 'Nashik', 'Driver', 'nandu@gmail.com', 'Pass@123', '', '', '', ''),
(33, 'Bhushan', 'Yeole', '8975315536', 'Kolhapur', 'Driver', 'bhushan@gmail.com', 'Pass@123', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vehicle`
--

CREATE TABLE `tms_vehicle` (
  `v_id` int(20) NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_reg_no` varchar(200) NOT NULL,
  `v_pass_no` varchar(200) NOT NULL,
  `v_driver` varchar(200) NOT NULL,
  `v_category` varchar(200) NOT NULL,
  `v_dpic` varchar(200) NOT NULL,
  `v_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_vehicle`
--

INSERT INTO `tms_vehicle` (`v_id`, `v_name`, `v_reg_no`, `v_pass_no`, `v_driver`, `v_category`, `v_dpic`, `v_status`) VALUES
(3, 'SWIFT', 'MH15AS5586', '4', 'Prashant Aher', 'Mini', '', 'Available'),
(4, 'AURA', 'MH15DJ8866', '5', 'Tushar Thorat', 'Mini', '', 'Available'),
(5, 'CRETA', 'MH15AS4399', '5', 'Ganesh solashe', 'Mini', '', 'Available'),
(6, 'VARNA', 'MH15AS6633', '7', 'TUSHAR THORAT', 'Mini', '', 'Available'),
(7, 'TUCSON', 'MH15MS2756', '5', 'Rahul Pawar', 'Mini', '', 'Available'),
(8, 'XCENT', 'MH15GH5496', '4', 'Dhiraj Aher', 'Mini', '', 'Available'),
(9, 'LUXURY', 'MH15CD0043', '50', 'Kunal Nikam', 'Bus', '', 'Available'),
(10, 'TATA BUS', 'MH15FA7423', '32', 'Amol Hiwale', 'Bus', '', 'Available'),
(11, 'EICHER BUSES', 'MH15DA7693', '45', 'Arun Boraje', 'Bus', '', 'Available'),
(12, 'ASHOK LEYLAND', 'MH15DA6593', '35', 'Abhi Lanke', 'Bus', '', 'Available'),
(13, 'FORTUNER', 'MH15MY1000', '4', 'KISHOR HARODE', 'Prime SUV', '', 'Available'),
(14, 'MAHINDRA THAR', 'MH15KL5555', '4', 'Shubham Pimple', 'Prime SUV', '', 'Available'),
(15, 'FORD ENDEAVOUR', 'MH15GD2648', '4', 'YASH KOTE', 'Prime SUV', '', 'Available'),
(16, 'TATA NEXON', 'MH15GT5641', '4', 'BALKRUSHNA GAIKAWAD', 'Prime SUV', '', 'Available'),
(17, 'TATA HARRIER', 'MH15CA7755', '4', 'Gokul Pawar', 'Prime SUV', '', 'Available'),
(18, 'MAHINDRA SCORPIO', 'MH15GR7698', '8', 'Gurunath Kolhe', 'Prime SUV', '', 'Available'),
(19, 'MAHINDRA XUV700', 'MH15JD9999', '7', 'RUSHI PABLE', 'Prime SUV', '', 'Available'),
(20, 'TOYOTA FORTUNER', 'MH15UD8888', '8', 'Vikas Pable', 'Prime SUV', '', 'Available'),
(21, 'BOLERO', 'MH15FD7648', '10', 'Nandu lanke', 'Prime SUV', '', 'Available'),
(22, 'KIA', 'MH15CA9876', '4', 'Bhushan Yeole', 'Prime SUV', '', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_entries`
--
ALTER TABLE `contact_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_admin`
--
ALTER TABLE `tms_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `tms_user`
--
ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_entries`
--
ALTER TABLE `contact_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tms_admin`
--
ALTER TABLE `tms_admin`
  MODIFY `a_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  MODIFY `r_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  MODIFY `l_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tms_user`
--
ALTER TABLE `tms_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
