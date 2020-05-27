-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 05:56 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesspermissions`
--

CREATE TABLE `accesspermissions` (
  `AccessPermissionsID` int(8) NOT NULL,
  `Permission` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `AddressID` int(8) NOT NULL,
  `AddressLine1` varchar(100) DEFAULT NULL,
  `AddressLine2` varchar(100) DEFAULT NULL,
  `PhoneNumber1` bigint(15) DEFAULT NULL,
  `PhoneNumber2` bigint(15) DEFAULT NULL,
  `Zip` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `CountryID` int(8) DEFAULT NULL,
  `StateID` int(8) DEFAULT NULL,
  `CountyID` int(45) NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`AddressID`, `AddressLine1`, `AddressLine2`, `PhoneNumber1`, `PhoneNumber2`, `Zip`, `City`, `CountryID`, `StateID`, `CountyID`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(10, 'H.NO1-4-59 Near ABV Degree College', 'address line2', 0, 0, '506167', '', NULL, 2, 2, '2020-04-29 22:48:38', '2020-04-29 22:48:38', '1'),
(11, 'H.NO1-4-59 Near ABV Degree College', 'address line2', 0, 0, '506167', '', NULL, 2, 1, '2020-04-29 23:03:00', '2020-04-29 23:03:00', '1'),
(12, 'address line1', 'address line2', NULL, NULL, '506167', '', NULL, 3, 4, '2020-05-01 08:00:22', '2020-05-01 08:00:22', '1'),
(14, 'address line1', 'address line2', 8121600621, 8121600621, '506167', NULL, NULL, 2, 1, '2020-05-02 13:17:34', '2020-05-02 13:17:34', '1'),
(15, 'H.NO1-4-59 Near ABV Degree College', 'address line2', 8121600621, NULL, '506167', '', NULL, 3, 3, '2020-05-02 14:39:49', '2020-05-02 14:39:49', '1'),
(17, 'address line1', 'address line2', 8121600621, NULL, '506167', NULL, NULL, 3, 3, '2020-05-02 16:23:57', '2020-05-02 16:23:57', '1'),
(19, 'address line1', 'address line2', 1234567890, NULL, '99692', NULL, NULL, 2, 1, '2020-05-02 20:42:57', '2020-05-02 20:42:57', '1'),
(20, 'addressline 1', 'Geetha Nagar', 1234567890, NULL, '506167', '', NULL, 2, 2, '2020-05-14 09:41:47', '2020-05-14 09:41:47', '1');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `AnswersID` int(8) NOT NULL,
  `Answer` varchar(200) DEFAULT NULL,
  `AnswerDescription` varchar(100) DEFAULT NULL,
  `AnswerClues` varchar(100) DEFAULT NULL,
  `IsCorrectAnswerFlag` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `AnswerNumber` int(8) DEFAULT NULL,
  `VersionNumber` int(8) DEFAULT NULL,
  `CurrentFlag` int(8) DEFAULT NULL,
  `QuestionNumber` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `AssessmentID` int(8) NOT NULL,
  `AssignedDate` datetime DEFAULT NULL,
  `TargetStartDate` datetime DEFAULT NULL,
  `ActualStartDate` datetime DEFAULT NULL,
  `TargetFinishDate` datetime DEFAULT NULL,
  `ActualFinishDate` int(8) DEFAULT NULL,
  `PercentageComplete` int(8) DEFAULT NULL,
  `TotalQuestions` int(8) DEFAULT NULL,
  `TargetTime` int(8) DEFAULT NULL,
  `PercentageAchieved` int(8) DEFAULT NULL,
  `AssignedByUserID` int(8) DEFAULT NULL,
  `AssignedToUserID` int(8) DEFAULT NULL,
  `TestsID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `AttachmentID` int(8) NOT NULL,
  `AttachmentName` varchar(100) DEFAULT NULL,
  `ArchivedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `RecallDate` datetime DEFAULT NULL,
  `EmailContent` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `EmailsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `ClassesID` int(8) NOT NULL,
  `ClassName` varchar(100) DEFAULT NULL,
  `GradeNumber` varchar(100) DEFAULT NULL,
  `GradeText` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contentapprovers`
--

CREATE TABLE `contentapprovers` (
  `ContentApproversID` int(8) NOT NULL,
  `RejectedFlag` varchar(100) DEFAULT NULL,
  `RejectedReason` varchar(100) DEFAULT NULL,
  `ApprovedNotes` varchar(100) DEFAULT NULL,
  `ApprovedDate` datetime DEFAULT NULL,
  `RejectedDate` datetime DEFAULT NULL,
  `CorrectionNotes` varchar(100) DEFAULT NULL,
  `KeyApproverFlag` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `ContentsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `ContentsID` int(8) NOT NULL,
  `Contents` varchar(100) DEFAULT NULL,
  `RejectedFlag` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `RejectedDate` datetime DEFAULT NULL,
  `AddedByUserID` int(8) DEFAULT NULL,
  `TopicsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `CountyID` int(8) NOT NULL,
  `StateID` int(45) NOT NULL,
  `CountyName` varchar(45) DEFAULT NULL,
  `CountyCode` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`CountyID`, `StateID`, `CountyName`, `CountyCode`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(1, 2, 'Alabama county', NULL, '2020-04-29 20:40:05', '2020-04-29 20:40:05', '1'),
(2, 2, 'alabama countys', NULL, '2020-04-29 20:40:58', '2020-04-29 20:40:58', '1'),
(3, 3, 'county name', NULL, '2020-04-30 23:16:21', '2020-04-30 23:16:21', '1'),
(4, 3, 'washington countyname1', NULL, '2020-05-01 07:55:47', '2020-05-01 07:55:47', '1'),
(5, 2, 'Test', 'TS', '2020-05-01 17:42:12', '2020-05-01 17:42:12', '1'),
(6, 2, 'Test2', 'TS2', '2020-05-01 17:42:59', '2020-05-01 17:42:59', '1'),
(7, 2, 'Test3', 'Ts3', '2020-05-01 17:44:05', '2020-05-01 17:44:05', '1'),
(8, 3, 'washington county 2', 'wc2', '2020-05-02 14:37:07', '2020-05-02 14:37:07', '1'),
(9, 7, 'Virginia county', 'VC', '2020-05-02 20:32:03', '2020-05-02 20:32:03', '1');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `CountriesID` int(8) NOT NULL,
  `CountryCode` varchar(45) DEFAULT NULL,
  `CountryName` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`CountriesID`, `CountryCode`, `CountryName`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(4, 'US', 'USA', '2020-04-21 11:10:31', '2020-04-21 11:10:31', '1');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` int(8) NOT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `SubjectID` int(25) DEFAULT NULL,
  `isMasterCourse` int(2) NOT NULL DEFAULT '0',
  `Description` varchar(100) DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `CourseName`, `SubjectID`, `isMasterCourse`, `Description`, `CreateDate`, `UpdateDate`, `IsActive`) VALUES
(6, 'Fractions', 1, 0, NULL, '2020-05-07 23:34:08', '2020-05-07 23:34:08', '1'),
(7, 'Maths Course2', 1, 0, 'Description About Course', '2020-05-08 22:53:05', '2020-05-08 22:53:05', '1'),
(8, 'Real Numbers', 1, 0, 'Description about Course', '2020-05-09 07:42:54', '2020-05-09 07:42:54', '1');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `CurrencyID` int(8) NOT NULL,
  `CurrencyCode` varchar(100) DEFAULT NULL,
  `CurrencyName` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `DistrictID` int(8) NOT NULL,
  `DistrictName` varchar(45) DEFAULT NULL,
  `AddressID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `DocumentsID` int(8) NOT NULL,
  `DocumentURL` varchar(100) DEFAULT NULL,
  `DocumentPath` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `DocumentTypeID` int(8) DEFAULT NULL,
  `TopicsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documenttype`
--

CREATE TABLE `documenttype` (
  `DocumentTypeID` int(8) NOT NULL,
  `MaxSizeAllowed` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emailreceipients`
--

CREATE TABLE `emailreceipients` (
  `EmailReceipientsID` int(8) NOT NULL,
  `ReceipientEmail` varchar(100) DEFAULT NULL,
  `ReceivedDate` datetime DEFAULT NULL,
  `ReadDate` datetime DEFAULT NULL,
  `ArchivedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `EmailsID` int(8) DEFAULT NULL,
  `ReceiverUserID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `EmailsID` int(8) NOT NULL,
  `SentDate` datetime DEFAULT NULL,
  `ArchivedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `RecallDate` datetime DEFAULT NULL,
  `EmailContent` varchar(100) DEFAULT NULL,
  `SenderUserID` int(8) DEFAULT NULL,
  `EmailTemplateID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `ParentEmailsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emailtemplates`
--

CREATE TABLE `emailtemplates` (
  `EmailTemplateID` int(8) NOT NULL,
  `TemplateName` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forumquestions`
--

CREATE TABLE `forumquestions` (
  `ForumID` int(8) NOT NULL,
  `ForumQuestion` varchar(100) DEFAULT NULL,
  `Tags` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `DeletedFlag` varchar(100) DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `NumberOfViews` int(8) DEFAULT NULL,
  `ForumSectionsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forumresponses`
--

CREATE TABLE `forumresponses` (
  `ForumResponsesID` int(8) NOT NULL,
  `Response` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `DeletedFlag` varchar(100) DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `NumberOfViews` int(8) DEFAULT NULL,
  `NumberOfLikes` int(8) DEFAULT NULL,
  `NumberOfDislikes` int(8) DEFAULT NULL,
  `ForumSectionsID` int(8) DEFAULT NULL,
  `ForumID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forumsections`
--

CREATE TABLE `forumsections` (
  `ForumSectionsID` int(8) NOT NULL,
  `ForumSectionName` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `DeletedFlag` varchar(100) DEFAULT NULL,
  `NumberOfQuestions` int(8) DEFAULT NULL,
  `NumberOfResponses` int(8) DEFAULT NULL,
  `NumberOfViews` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GradeID` int(8) NOT NULL,
  `GradeName` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsActive` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GradeID`, `GradeName`, `Description`, `CreateDate`, `UpdateDate`, `IsActive`) VALUES
(6, 'First Class', 'Description About First Class', '2020-05-07 23:22:03', '2020-05-07 23:22:03', '1'),
(7, 'Second Grade', 'Description About Grade', '2020-05-08 22:51:57', '2020-05-08 22:51:57', '1'),
(8, 'Third Grade', 'Description about this grade', '2020-05-09 07:37:49', '2020-05-09 07:37:49', '1');

-- --------------------------------------------------------

--
-- Table structure for table `learningresources`
--

CREATE TABLE `learningresources` (
  `LearningresourceID` int(8) NOT NULL,
  `LearningResourceName` varchar(100) DEFAULT NULL,
  `ResourceType` varchar(100) DEFAULT NULL,
  `UploadResource` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsActive` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learningresources`
--

INSERT INTO `learningresources` (`LearningresourceID`, `LearningResourceName`, `ResourceType`, `UploadResource`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(1, NULL, NULL, 'Ce966133C6We3R63913C.txt', '2020-05-08 15:33:20', '2020-05-08 15:33:20', '1'),
(2, 'test resource name', 'Video', '0316Pjr9GsCRP3nA9r93.txt', '2020-05-08 15:36:37', '2020-05-08 15:36:37', '1'),
(3, 'test resource name45321', 'Video', '913j6WeRsW33RWRPn319.mpga', '2020-05-14 18:55:57', '2020-05-14 18:55:57', '1'),
(4, 'test resource name45321123', 'Video', '1G9r0Gj09R1AGC9690s2.mpga', '2020-05-14 18:57:18', '2020-05-14 18:57:18', '1'),
(5, 'test resource name 1000', 'file', 'Gj66Ge3906A90nW3C903.pdf', '2020-05-16 08:03:22', '2020-05-16 08:03:22', '1');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `MessagesID` int(8) NOT NULL,
  `Message` int(8) DEFAULT NULL,
  `SentDate` datetime DEFAULT NULL,
  `ReceivedReadFlag` varchar(100) DEFAULT NULL,
  `MessageReadDate` datetime DEFAULT NULL,
  `SenderUserID` int(8) DEFAULT NULL,
  `ReceiverUserID` int(8) DEFAULT NULL,
  `UserGroupID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `ParentMessagesID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrdersID` int(8) NOT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `OrderAmount` int(8) DEFAULT NULL,
  `Discount` int(8) DEFAULT NULL,
  `PaymentDate` datetime DEFAULT NULL,
  `PaidFlag` varchar(100) DEFAULT NULL,
  `CancelledDate` datetime DEFAULT NULL,
  `CancelledFlag` varchar(100) DEFAULT NULL,
  `CancellationReason` varchar(100) DEFAULT NULL,
  `ReturnedDate` datetime DEFAULT NULL,
  `ReturnedFlag` datetime DEFAULT NULL,
  `ReturnedReason` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `OrderStatus` varchar(100) DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `SubscriptionID` int(8) DEFAULT NULL,
  `CurrencyID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordershistory`
--

CREATE TABLE `ordershistory` (
  `OrdersHistoryID` int(8) NOT NULL,
  `OrderAmount` int(8) DEFAULT NULL,
  `OrderUpdateComments` varchar(100) DEFAULT NULL,
  `OrdersID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paymentcardtype`
--

CREATE TABLE `paymentcardtype` (
  `PaymentCardTypeID` int(8) NOT NULL,
  `CardType` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paymenthistory`
--

CREATE TABLE `paymenthistory` (
  `PaymentHistoryID` int(8) NOT NULL,
  `PaymentDate` datetime DEFAULT NULL,
  `PaymentAmount` int(8) DEFAULT NULL,
  `RejectedFlag` varchar(100) DEFAULT NULL,
  `RejectedDate` datetime DEFAULT NULL,
  `RejectedReason` varchar(100) DEFAULT NULL,
  `CardEndingWith` varchar(100) DEFAULT NULL,
  `PaymentCardTypeID` int(8) DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `SubscriptionID` int(8) DEFAULT NULL,
  `OrdersID` int(8) DEFAULT NULL,
  `CurrencyID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questioncategory`
--

CREATE TABLE `questioncategory` (
  `QuestionCategoryID` int(8) NOT NULL,
  `QuestionCategory` varchar(100) DEFAULT NULL,
  `QuestionKey` varchar(100) DEFAULT NULL,
  `DifficultyLevel` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questioncategory`
--

INSERT INTO `questioncategory` (`QuestionCategoryID`, `QuestionCategory`, `QuestionKey`, `DifficultyLevel`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(1, 'Fractions', 'AXL789', '1', NULL, NULL, '1'),
(2, 'Question category1', 'key123', '1', '2020-05-02 20:48:02', '2020-05-02 20:48:02', '1'),
(3, 'Question category2', 'Fractions11', '2', '2020-05-08 23:07:27', '2020-05-08 23:07:27', '1'),
(4, 'Question category 3', 'Realnumbers123', '1', '2020-05-09 07:40:14', '2020-05-09 07:40:14', '1');

-- --------------------------------------------------------

--
-- Table structure for table `questionoptions`
--

CREATE TABLE `questionoptions` (
  `id` int(11) NOT NULL,
  `QuestionID` int(25) NOT NULL,
  `OptionText` text NOT NULL,
  `CorrectOption` int(2) NOT NULL,
  `OptionOrder` int(2) NOT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsActive` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionoptions`
--

INSERT INTO `questionoptions` (`id`, `QuestionID`, `OptionText`, `CorrectOption`, `OptionOrder`, `audio`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(1, 5, '<p>option1</p>', 0, 1, NULL, '2020-05-06 14:48:09', '2020-05-06 14:48:09', 1),
(2, 6, '<p>option1</p>', 0, 1, NULL, '2020-05-06 15:46:01', '2020-05-06 15:46:01', 1),
(3, 6, '<p>option2</p>', 0, 2, NULL, '2020-05-06 15:46:01', '2020-05-06 15:46:01', 1),
(4, 6, '<p>option3</p>', 0, 3, NULL, '2020-05-06 15:46:01', '2020-05-06 15:46:01', 1),
(5, 6, '<p>option4</p>', 0, 4, NULL, '2020-05-06 15:46:01', '2020-05-06 15:46:01', 1),
(6, 7, '<p>option1</p>', 0, 1, NULL, '2020-05-06 15:57:57', '2020-05-06 15:57:57', 1),
(7, 7, '<p>option2</p>', 0, 2, NULL, '2020-05-06 15:57:57', '2020-05-06 15:57:57', 1),
(8, 7, '<p>option3</p>', 0, 3, NULL, '2020-05-06 15:57:57', '2020-05-06 15:57:57', 1),
(9, 7, '<p>option4</p>', 0, 4, NULL, '2020-05-06 15:57:57', '2020-05-06 15:57:57', 1),
(10, 8, '<p>option1</p>', 1, 1, NULL, '2020-05-06 16:20:12', '2020-05-06 16:20:12', 1),
(11, 8, '<p>option2</p>', 0, 2, NULL, '2020-05-06 16:20:12', '2020-05-06 16:20:12', 1),
(12, 8, '<p>option3</p>', 0, 3, NULL, '2020-05-06 16:20:12', '2020-05-06 16:20:12', 1),
(13, 8, '<p>option 4</p>', 0, 4, NULL, '2020-05-06 16:20:12', '2020-05-06 16:20:12', 1),
(14, 10, '<p>test</p>', 0, 1, NULL, '2020-05-15 10:23:46', '2020-05-15 10:23:46', 1),
(15, 10, '<p>test2</p>', 0, 2, NULL, '2020-05-15 10:23:46', '2020-05-15 10:23:46', 1),
(16, 10, '<p>test3</p>', 0, 3, NULL, '2020-05-15 10:23:47', '2020-05-15 10:23:47', 1),
(17, 10, '<p>test4</p>', 0, 4, NULL, '2020-05-15 10:23:47', '2020-05-15 10:23:47', 1),
(18, 11, '<p><span class=\"AM\">`root(4)(6)`</span></p>', 1, 1, NULL, '2020-05-15 14:10:15', '2020-05-15 14:10:15', 1),
(19, 11, '<p><span class=\"AM\">`4^(5+6)`</span></p>', 0, 2, NULL, '2020-05-15 14:10:15', '2020-05-15 14:10:15', 1),
(20, 11, '<p><span class=\"AM\">`(x+1)/(x-1)`</span></p>', 0, 3, NULL, '2020-05-15 14:10:16', '2020-05-15 14:10:16', 1),
(21, 11, '<p><span class=\"AM\">`x_(mn)`</span></p>', 0, 4, NULL, '2020-05-15 14:10:16', '2020-05-15 14:10:16', 1),
(22, 12, '<p><span class=\"AM\">`-&lt;`</span></p>', 1, 1, NULL, '2020-05-15 16:07:02', '2020-05-15 16:07:02', 1),
(23, 12, '<p><span class=\"AM\">`x_(mn)`</span></p>', 0, 2, NULL, '2020-05-15 16:07:02', '2020-05-15 16:07:02', 1),
(24, 12, '<p><span class=\"AM\">`x_(mn)`</span></p>', 0, 3, NULL, '2020-05-15 16:07:02', '2020-05-15 16:07:02', 1),
(25, 12, '<p><span class=\"AM\">`-:`</span></p>', 0, 4, NULL, '2020-05-15 16:07:02', '2020-05-15 16:07:02', 1),
(26, 13, '<p>option 1</p>', 1, 1, NULL, '2020-05-15 16:25:32', '2020-05-15 16:25:32', 1),
(27, 13, '<p>option 2</p>', 0, 2, NULL, '2020-05-15 16:25:32', '2020-05-15 16:25:32', 1),
(28, 13, '<p>option 3</p>', 0, 3, NULL, '2020-05-15 16:25:32', '2020-05-15 16:25:32', 1),
(29, 13, '<p>option 4</p>', 0, 4, NULL, '2020-05-15 16:25:32', '2020-05-15 16:25:32', 1),
(30, 14, '<p>option 1</p>', 1, 1, NULL, '2020-05-15 16:26:19', '2020-05-15 16:26:19', 1),
(31, 14, '<p>option 2</p>', 0, 2, NULL, '2020-05-15 16:26:19', '2020-05-15 16:26:19', 1),
(32, 14, '<p>option 3</p>', 0, 3, NULL, '2020-05-15 16:26:19', '2020-05-15 16:26:19', 1),
(33, 14, '<p>option 4</p>', 0, 4, NULL, '2020-05-15 16:26:19', '2020-05-15 16:26:19', 1),
(34, 15, '<p>option 1</p>', 1, 1, NULL, '2020-05-15 16:26:43', '2020-05-15 16:26:43', 1),
(35, 15, '<p>option 2</p>', 0, 2, NULL, '2020-05-15 16:26:43', '2020-05-15 16:26:43', 1),
(36, 15, '<p>option 3</p>', 0, 3, NULL, '2020-05-15 16:26:43', '2020-05-15 16:26:43', 1),
(37, 15, '<p>option 4</p>', 0, 4, NULL, '2020-05-15 16:26:43', '2020-05-15 16:26:43', 1),
(38, 16, '<p>option 1</p>', 0, 1, NULL, '2020-05-15 16:35:01', '2020-05-15 16:35:01', 1),
(39, 16, '<p>option 2</p>', 1, 2, NULL, '2020-05-15 16:35:01', '2020-05-15 16:35:01', 1),
(40, 16, '<p>option 3</p>', 0, 3, NULL, '2020-05-15 16:35:01', '2020-05-15 16:35:01', 1),
(41, 16, '<p>option 4</p>', 0, 4, NULL, '2020-05-15 16:35:01', '2020-05-15 16:35:01', 1),
(42, 17, '<p>option 1</p>', 0, 1, NULL, '2020-05-15 16:37:49', '2020-05-15 16:37:49', 1),
(43, 17, '<p>option 2</p>', 0, 2, NULL, '2020-05-15 16:37:49', '2020-05-15 16:37:49', 1),
(44, 17, '<p>option 3</p>', 1, 3, NULL, '2020-05-15 16:37:49', '2020-05-15 16:37:49', 1),
(45, 17, '<p>option 4</p>', 0, 4, NULL, '2020-05-15 16:37:49', '2020-05-15 16:37:49', 1),
(46, 18, '<p>option 1</p>', 0, 1, NULL, '2020-05-15 16:38:20', '2020-05-15 16:38:20', 1),
(47, 18, '<p>option 2</p>', 0, 2, NULL, '2020-05-15 16:38:20', '2020-05-15 16:38:20', 1),
(48, 18, '<p>option 3</p>', 1, 3, NULL, '2020-05-15 16:38:20', '2020-05-15 16:38:20', 1),
(49, 18, '<p>option 4</p>', 0, 4, NULL, '2020-05-15 16:38:20', '2020-05-15 16:38:20', 1),
(50, 19, '<p>option 1</p>', 0, 1, NULL, '2020-05-15 16:40:37', '2020-05-15 16:40:37', 1),
(51, 19, '<p>option 2</p>', 0, 2, NULL, '2020-05-15 16:40:37', '2020-05-15 16:40:37', 1),
(52, 19, '<p>option 3</p>', 0, 3, NULL, '2020-05-15 16:40:37', '2020-05-15 16:40:37', 1),
(53, 19, '<p>option 4</p>', 1, 4, NULL, '2020-05-15 16:40:37', '2020-05-15 16:40:37', 1),
(54, 20, '<p>option 1</p>', 0, 1, NULL, '2020-05-15 16:42:01', '2020-05-15 16:42:01', 1),
(55, 20, '<p>option 2</p>', 0, 2, NULL, '2020-05-15 16:42:01', '2020-05-15 16:42:01', 1),
(56, 20, '<p>option 3</p>', 0, 3, NULL, '2020-05-15 16:42:01', '2020-05-15 16:42:01', 1),
(57, 20, '<p>option 4</p>', 1, 4, NULL, '2020-05-15 16:42:01', '2020-05-15 16:42:01', 1),
(58, 21, '<p>option 1</p>', 0, 1, NULL, '2020-05-15 16:42:56', '2020-05-15 16:42:56', 1),
(59, 21, '<p>option 2</p>', 0, 2, NULL, '2020-05-15 16:42:56', '2020-05-15 16:42:56', 1),
(60, 21, '<p>option 3</p>', 0, 3, NULL, '2020-05-15 16:42:57', '2020-05-15 16:42:57', 1),
(61, 21, '<p>option 4</p>', 1, 4, NULL, '2020-05-15 16:42:57', '2020-05-15 16:42:57', 1),
(62, 22, '<p><span class=\"AM\">`dy/dx`</span> &nbsp;option1</p>', 1, 1, NULL, '2020-05-16 07:55:39', '2020-05-16 07:55:39', 1),
(63, 22, '<p><span class=\"AM\">`(x+1)/(x-1)`</span>&nbsp; option 2</p>', 0, 2, NULL, '2020-05-16 07:55:39', '2020-05-16 07:55:39', 1),
(64, 22, '<p><span class=\"AM\">`x_(mn)`</span>&nbsp;option 3</p>', 0, 3, NULL, '2020-05-16 07:55:39', '2020-05-16 07:55:39', 1),
(65, 22, '<p><span class=\"AM\">`x^(m+n)`</span>&nbsp;option 4</p>', 0, 4, NULL, '2020-05-16 07:55:39', '2020-05-16 07:55:39', 1),
(66, 26, '<p><span class=\"AM\">`dy/dx`</span></p>', 1, 1, NULL, '2020-05-19 16:10:34', '2020-05-19 16:10:34', 1),
(67, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:11', '2020-05-19 22:08:11', 1),
(68, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(69, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(70, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(71, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(72, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(73, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(74, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(75, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(76, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(77, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(78, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(79, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(80, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(81, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(82, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(83, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(84, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(85, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(86, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(87, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(88, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(89, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(90, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(91, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(92, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(93, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(94, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:12', '2020-05-19 22:08:12', 1),
(95, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(96, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(97, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(98, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(99, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(100, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(101, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(102, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(103, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(104, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(105, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(106, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(107, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(108, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(109, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(110, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(111, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(112, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(113, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(114, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(115, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(116, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(117, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(118, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(119, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(120, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(121, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(122, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(123, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(124, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(125, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(126, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(127, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(128, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(129, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(130, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(131, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(132, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:13', '2020-05-19 22:08:13', 1),
(133, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(134, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(135, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(136, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(137, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(138, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(139, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(140, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(141, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(142, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(143, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(144, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(145, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(146, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(147, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(148, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(149, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(150, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(151, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(152, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(153, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(154, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(155, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(156, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(157, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(158, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(159, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(160, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(161, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(162, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(163, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(164, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(165, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(166, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(167, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(168, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(169, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:14', '2020-05-19 22:08:14', 1),
(170, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(171, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(172, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(173, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(174, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(175, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(176, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(177, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(178, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(179, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(180, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(181, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(182, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(183, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(184, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(185, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(186, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(187, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(188, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(189, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(190, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(191, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:15', '2020-05-19 22:08:15', 1),
(192, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(193, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(194, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(195, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(196, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(197, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(198, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(199, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(200, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(201, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(202, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(203, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(204, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(205, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(206, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(207, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(208, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(209, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(210, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(211, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(212, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(213, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(214, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(215, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(216, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(217, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(218, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:16', '2020-05-19 22:08:16', 1),
(219, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(220, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(221, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(222, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(223, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(224, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(225, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(226, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(227, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(228, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(229, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(230, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(231, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(232, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(233, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(234, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(235, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(236, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(237, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(238, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(239, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(240, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:17', '2020-05-19 22:08:17', 1),
(241, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(242, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(243, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(244, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(245, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(246, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(247, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(248, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(249, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(250, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(251, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(252, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(253, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(254, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(255, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(256, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(257, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(258, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(259, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(260, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(261, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(262, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(263, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:18', '2020-05-19 22:08:18', 1),
(264, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(265, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(266, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(267, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(268, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(269, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(270, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(271, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(272, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(273, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(274, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(275, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(276, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(277, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(278, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(279, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(280, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(281, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(282, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(283, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(284, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(285, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(286, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(287, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(288, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(289, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(290, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(291, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(292, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(293, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(294, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(295, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(296, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(297, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(298, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(299, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(300, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(301, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:19', '2020-05-19 22:08:19', 1),
(302, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(303, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(304, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(305, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(306, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(307, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(308, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(309, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(310, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(311, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(312, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(313, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(314, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(315, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(316, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(317, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(318, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(319, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(320, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(321, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(322, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(323, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(324, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(325, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(326, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(327, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(328, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(329, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(330, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(331, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(332, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:20', '2020-05-19 22:08:20', 1),
(333, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(334, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(335, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(336, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(337, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(338, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(339, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(340, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(341, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(342, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(343, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(344, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(345, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(346, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(347, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(348, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(349, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(350, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(351, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(352, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(353, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(354, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(355, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(356, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(357, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(358, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:21', '2020-05-19 22:08:21', 1),
(359, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(360, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(361, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(362, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(363, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(364, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(365, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(366, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(367, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(368, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(369, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(370, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(371, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(372, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(373, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(374, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(375, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(376, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:22', '2020-05-19 22:08:22', 1),
(377, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(378, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(379, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(380, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(381, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(382, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(383, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(384, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(385, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(386, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(387, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(388, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(389, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(390, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(391, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(392, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(393, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(394, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(395, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(396, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(397, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(398, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(399, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(400, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(401, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(402, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(403, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(404, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(405, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(406, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(407, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(408, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(409, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(410, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(411, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:23', '2020-05-19 22:08:23', 1),
(412, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(413, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(414, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(415, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(416, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(417, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(418, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(419, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(420, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(421, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(422, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(423, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(424, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(425, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(426, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(427, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(428, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(429, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(430, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(431, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(432, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(433, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(434, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(435, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(436, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(437, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(438, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(439, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(440, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(441, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(442, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(443, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(444, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:24', '2020-05-19 22:08:24', 1),
(445, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(446, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(447, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(448, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(449, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(450, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(451, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(452, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(453, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(454, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(455, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(456, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(457, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(458, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(459, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(460, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(461, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(462, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(463, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(464, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(465, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(466, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(467, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:25', '2020-05-19 22:08:25', 1),
(468, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(469, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(470, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(471, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(472, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(473, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(474, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(475, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(476, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(477, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(478, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(479, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(480, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(481, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(482, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(483, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(484, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(485, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(486, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(487, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(488, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(489, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(490, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(491, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(492, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(493, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(494, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(495, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(496, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(497, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(498, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(499, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:26', '2020-05-19 22:08:26', 1),
(500, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(501, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(502, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(503, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(504, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(505, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(506, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(507, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(508, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(509, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(510, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(511, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(512, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(513, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(514, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(515, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(516, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(517, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(518, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(519, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(520, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(521, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(522, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(523, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(524, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(525, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(526, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(527, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(528, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(529, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(530, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(531, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:27', '2020-05-19 22:08:27', 1),
(532, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(533, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(534, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(535, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(536, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(537, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(538, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(539, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(540, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(541, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(542, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(543, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(544, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(545, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(546, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(547, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(548, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(549, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(550, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(551, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1);
INSERT INTO `questionoptions` (`id`, `QuestionID`, `OptionText`, `CorrectOption`, `OptionOrder`, `audio`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(552, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(553, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(554, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(555, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(556, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(557, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(558, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(559, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(560, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(561, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(562, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(563, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(564, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:28', '2020-05-19 22:08:28', 1),
(565, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(566, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(567, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(568, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(569, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(570, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(571, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(572, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(573, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(574, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(575, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(576, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(577, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(578, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(579, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(580, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(581, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(582, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(583, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(584, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(585, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(586, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(587, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(588, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(589, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(590, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(591, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(592, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(593, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(594, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(595, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:29', '2020-05-19 22:08:29', 1),
(596, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(597, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(598, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(599, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(600, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(601, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(602, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(603, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(604, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(605, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(606, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(607, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(608, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(609, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(610, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(611, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:30', '2020-05-19 22:08:30', 1),
(612, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(613, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(614, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(615, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(616, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(617, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(618, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(619, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(620, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(621, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(622, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(623, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(624, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(625, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(626, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(627, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(628, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(629, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(630, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:31', '2020-05-19 22:08:31', 1),
(631, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(632, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(633, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(634, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(635, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(636, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(637, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(638, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(639, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(640, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(641, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(642, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(643, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(644, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(645, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(646, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(647, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(648, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(649, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(650, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(651, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(652, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(653, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(654, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(655, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:32', '2020-05-19 22:08:32', 1),
(656, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(657, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(658, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(659, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(660, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(661, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(662, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(663, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(664, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(665, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(666, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(667, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(668, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(669, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(670, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(671, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(672, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(673, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(674, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(675, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:33', '2020-05-19 22:08:33', 1),
(676, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(677, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(678, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(679, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(680, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(681, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(682, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(683, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(684, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(685, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(686, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(687, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(688, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(689, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(690, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(691, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(692, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(693, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(694, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(695, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:34', '2020-05-19 22:08:34', 1),
(696, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(697, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(698, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(699, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(700, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(701, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(702, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(703, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(704, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(705, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(706, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(707, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(708, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(709, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(710, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(711, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(712, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(713, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(714, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(715, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(716, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(717, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(718, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(719, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(720, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(721, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:35', '2020-05-19 22:08:35', 1),
(722, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(723, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(724, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(725, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(726, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(727, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(728, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(729, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(730, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(731, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(732, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(733, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(734, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(735, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(736, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(737, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(738, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(739, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(740, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(741, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(742, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(743, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(744, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(745, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(746, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(747, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(748, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:36', '2020-05-19 22:08:36', 1),
(749, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(750, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(751, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(752, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(753, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(754, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(755, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(756, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(757, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(758, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(759, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(760, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(761, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(762, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(763, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(764, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(765, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(766, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(767, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(768, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(769, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(770, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(771, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(772, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:37', '2020-05-19 22:08:37', 1),
(773, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(774, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(775, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(776, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(777, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(778, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(779, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(780, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(781, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(782, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(783, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(784, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(785, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(786, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(787, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(788, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(789, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(790, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(791, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(792, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(793, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(794, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(795, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(796, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(797, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(798, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(799, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(800, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(801, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:38', '2020-05-19 22:08:38', 1),
(802, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(803, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(804, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(805, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(806, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(807, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(808, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(809, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(810, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(811, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(812, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(813, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(814, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(815, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(816, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(817, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(818, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(819, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(820, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:39', '2020-05-19 22:08:39', 1),
(821, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(822, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(823, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(824, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(825, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(826, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(827, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(828, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(829, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(830, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(831, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(832, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(833, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(834, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(835, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(836, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(837, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(838, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(839, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(840, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(841, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(842, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(843, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(844, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(845, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(846, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(847, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(848, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(849, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(850, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:40', '2020-05-19 22:08:40', 1),
(851, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:41', '2020-05-19 22:08:41', 1),
(852, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:41', '2020-05-19 22:08:41', 1),
(853, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:41', '2020-05-19 22:08:41', 1),
(854, 28, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:41', '2020-05-19 22:08:41', 1),
(855, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:57', '2020-05-19 22:08:57', 1),
(856, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:57', '2020-05-19 22:08:57', 1),
(857, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:57', '2020-05-19 22:08:57', 1),
(858, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(859, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(860, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(861, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(862, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(863, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(864, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(865, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(866, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(867, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(868, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(869, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(870, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(871, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(872, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(873, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(874, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(875, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(876, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(877, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(878, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(879, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(880, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(881, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:58', '2020-05-19 22:08:58', 1),
(882, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(883, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(884, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(885, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(886, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(887, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(888, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(889, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(890, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(891, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(892, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(893, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(894, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(895, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(896, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(897, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(898, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(899, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(900, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(901, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(902, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(903, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(904, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(905, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(906, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(907, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(908, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(909, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(910, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(911, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:08:59', '2020-05-19 22:08:59', 1),
(912, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(913, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(914, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(915, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(916, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(917, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(918, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(919, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(920, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(921, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(922, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(923, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(924, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(925, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(926, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(927, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(928, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(929, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(930, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(931, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(932, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(933, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(934, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(935, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(936, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(937, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(938, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(939, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(940, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(941, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(942, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(943, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:00', '2020-05-19 22:09:00', 1),
(944, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(945, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(946, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(947, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(948, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(949, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(950, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(951, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(952, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(953, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(954, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(955, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(956, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(957, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(958, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(959, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(960, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(961, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(962, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(963, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(964, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(965, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(966, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(967, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(968, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(969, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(970, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(971, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(972, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(973, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(974, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(975, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(976, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(977, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(978, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(979, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:01', '2020-05-19 22:09:01', 1),
(980, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(981, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(982, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(983, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(984, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(985, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(986, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(987, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(988, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(989, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(990, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(991, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(992, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(993, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(994, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(995, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(996, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(997, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(998, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(999, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(1000, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(1001, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(1002, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(1003, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(1004, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(1005, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(1006, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(1007, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(1008, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:02', '2020-05-19 22:09:02', 1),
(1009, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:03', '2020-05-19 22:09:03', 1),
(1010, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:03', '2020-05-19 22:09:03', 1),
(1011, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:03', '2020-05-19 22:09:03', 1),
(1012, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:03', '2020-05-19 22:09:03', 1),
(1013, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:03', '2020-05-19 22:09:03', 1),
(1014, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:03', '2020-05-19 22:09:03', 1),
(1015, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:03', '2020-05-19 22:09:03', 1),
(1016, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:03', '2020-05-19 22:09:03', 1),
(1017, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1018, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1019, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1020, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1021, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1022, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1023, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1024, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1025, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1026, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1027, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1028, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1029, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1030, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1031, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1032, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:04', '2020-05-19 22:09:04', 1),
(1033, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1034, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1035, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1036, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1037, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1038, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1039, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1040, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1041, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1042, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1043, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1044, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1045, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1046, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1047, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1048, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1049, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:05', '2020-05-19 22:09:05', 1),
(1050, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1051, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1052, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1053, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1054, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1055, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1056, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1057, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1058, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1059, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1060, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1061, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1062, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1063, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1064, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1065, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:06', '2020-05-19 22:09:06', 1),
(1066, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1067, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1068, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1069, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1070, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1071, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1072, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1073, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1074, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1075, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1076, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1077, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:07', '2020-05-19 22:09:07', 1),
(1078, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1079, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1080, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1081, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1082, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1083, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1084, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1085, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1086, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1087, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1088, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1089, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1090, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1091, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1092, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1093, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1094, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1095, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1096, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1097, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1098, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:08', '2020-05-19 22:09:08', 1),
(1099, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1100, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1101, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1102, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1103, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1);
INSERT INTO `questionoptions` (`id`, `QuestionID`, `OptionText`, `CorrectOption`, `OptionOrder`, `audio`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(1104, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1105, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1106, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1107, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1108, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1109, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1110, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1111, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1112, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1113, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1114, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1115, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1116, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1117, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1118, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1119, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1120, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1121, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1122, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1123, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1124, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1125, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:09', '2020-05-19 22:09:09', 1),
(1126, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1127, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1128, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1129, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1130, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1131, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1132, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1133, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1134, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1135, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1136, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1137, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1138, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1139, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1140, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1141, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1142, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1143, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1144, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1145, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1146, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1147, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1148, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1149, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1150, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1151, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1152, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1153, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1154, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:10', '2020-05-19 22:09:10', 1),
(1155, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1156, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1157, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1158, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1159, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1160, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1161, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1162, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1163, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1164, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1165, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1166, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1167, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1168, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1169, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:11', '2020-05-19 22:09:11', 1),
(1170, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1171, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1172, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1173, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1174, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1175, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1176, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1177, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1178, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1179, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1180, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1181, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1182, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1183, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1184, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1185, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1186, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1187, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1188, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1189, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1190, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1191, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1192, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1193, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1194, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1195, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1196, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:12', '2020-05-19 22:09:12', 1),
(1197, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1198, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1199, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1200, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1201, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1202, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1203, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1204, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1205, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1206, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1207, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1208, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1209, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1210, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1211, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1212, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1213, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1214, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1215, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:13', '2020-05-19 22:09:13', 1),
(1216, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1217, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1218, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1219, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1220, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1221, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1222, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1223, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1224, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1225, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1226, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1227, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1228, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1229, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1230, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1231, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1232, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1233, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1234, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1235, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1236, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1237, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1238, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:14', '2020-05-19 22:09:14', 1),
(1239, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1240, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1241, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1242, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1243, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1244, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1245, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1246, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1247, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1248, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1249, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1250, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1251, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1252, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1253, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1254, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1255, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1256, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1257, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1258, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1259, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1260, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1261, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1262, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:15', '2020-05-19 22:09:15', 1),
(1263, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1264, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1265, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1266, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1267, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1268, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1269, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1270, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1271, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1272, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1273, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1274, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1275, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1276, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1277, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1278, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1279, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1280, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1281, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1282, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1283, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1284, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1285, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1286, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1287, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1288, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:16', '2020-05-19 22:09:16', 1),
(1289, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1290, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1291, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1292, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1293, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1294, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1295, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1296, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1297, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1298, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1299, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1300, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:17', '2020-05-19 22:09:17', 1),
(1301, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:18', '2020-05-19 22:09:18', 1),
(1302, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:18', '2020-05-19 22:09:18', 1),
(1303, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:18', '2020-05-19 22:09:18', 1),
(1304, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:18', '2020-05-19 22:09:18', 1),
(1305, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:18', '2020-05-19 22:09:18', 1),
(1306, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:18', '2020-05-19 22:09:18', 1),
(1307, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:18', '2020-05-19 22:09:18', 1),
(1308, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1309, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1310, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1311, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1312, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1313, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1314, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1315, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1316, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1317, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1318, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1319, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1320, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1321, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1322, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:19', '2020-05-19 22:09:19', 1),
(1323, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:20', '2020-05-19 22:09:20', 1),
(1324, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:20', '2020-05-19 22:09:20', 1),
(1325, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:20', '2020-05-19 22:09:20', 1),
(1326, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:20', '2020-05-19 22:09:20', 1),
(1327, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:20', '2020-05-19 22:09:20', 1),
(1328, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:21', '2020-05-19 22:09:21', 1),
(1329, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:21', '2020-05-19 22:09:21', 1),
(1330, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:21', '2020-05-19 22:09:21', 1),
(1331, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:21', '2020-05-19 22:09:21', 1),
(1332, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:21', '2020-05-19 22:09:21', 1),
(1333, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:21', '2020-05-19 22:09:21', 1),
(1334, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:21', '2020-05-19 22:09:21', 1),
(1335, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:21', '2020-05-19 22:09:21', 1),
(1336, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:21', '2020-05-19 22:09:21', 1),
(1337, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:22', '2020-05-19 22:09:22', 1),
(1338, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:22', '2020-05-19 22:09:22', 1),
(1339, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:22', '2020-05-19 22:09:22', 1),
(1340, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:22', '2020-05-19 22:09:22', 1),
(1341, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:22', '2020-05-19 22:09:22', 1),
(1342, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:22', '2020-05-19 22:09:22', 1),
(1343, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:22', '2020-05-19 22:09:22', 1),
(1344, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:22', '2020-05-19 22:09:22', 1),
(1345, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:22', '2020-05-19 22:09:22', 1),
(1346, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:22', '2020-05-19 22:09:22', 1),
(1347, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:23', '2020-05-19 22:09:23', 1),
(1348, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:23', '2020-05-19 22:09:23', 1),
(1349, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:23', '2020-05-19 22:09:23', 1),
(1350, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:24', '2020-05-19 22:09:24', 1),
(1351, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:24', '2020-05-19 22:09:24', 1),
(1352, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:24', '2020-05-19 22:09:24', 1),
(1353, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:24', '2020-05-19 22:09:24', 1),
(1354, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:24', '2020-05-19 22:09:24', 1),
(1355, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:24', '2020-05-19 22:09:24', 1),
(1356, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:24', '2020-05-19 22:09:24', 1),
(1357, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1358, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1359, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1360, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1361, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1362, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1363, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1364, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1365, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1366, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1367, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:25', '2020-05-19 22:09:25', 1),
(1368, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:26', '2020-05-19 22:09:26', 1),
(1369, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:26', '2020-05-19 22:09:26', 1),
(1370, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:26', '2020-05-19 22:09:26', 1),
(1371, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:26', '2020-05-19 22:09:26', 1),
(1372, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:26', '2020-05-19 22:09:26', 1),
(1373, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:26', '2020-05-19 22:09:26', 1),
(1374, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:26', '2020-05-19 22:09:26', 1),
(1375, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:26', '2020-05-19 22:09:26', 1),
(1376, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:26', '2020-05-19 22:09:26', 1),
(1377, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:26', '2020-05-19 22:09:26', 1),
(1378, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:27', '2020-05-19 22:09:27', 1),
(1379, 29, '<p>Hey there</p>', 1, 1, NULL, '2020-05-19 22:09:27', '2020-05-19 22:09:27', 1),
(1380, 30, '<p>hey check</p>', 1, 1, NULL, '2020-05-19 22:13:00', '2020-05-19 22:13:00', 1),
(1381, 30, '<p>hey check2</p>', 0, 2, NULL, '2020-05-19 22:13:00', '2020-05-19 22:13:00', 1),
(1382, 31, '<p>test audio upload option</p>', 1, 1, NULL, '2020-05-19 22:24:45', '2020-05-19 22:24:45', 1),
(1383, 32, '<p>test audio option1</p>', 1, 1, NULL, '2020-05-19 22:27:28', '2020-05-19 22:27:28', 1),
(1384, 33, '<p>vonkdoth option1</p>', 1, 1, NULL, '2020-05-19 22:31:35', '2020-05-19 22:31:35', 1),
(1385, 34, '<p><span class=\"AM\">`sum_(n=1)^oo`</span></p>', 1, 1, NULL, '2020-05-19 22:33:36', '2020-05-19 22:33:36', 1),
(1386, 35, '<p><span class=\"AM\">`sum_(n=1)^oo`</span></p>', 1, 1, NULL, '2020-05-19 22:34:10', '2020-05-19 22:34:10', 1),
(1387, 36, '<p><span class=\"AM\"><img src=\"http://www.imathas.com/cgi-bin/mimetex.cgi?%5Cdisplaystyle%7B%5Csum_%7B%7B%7Bn%7D%3D%7B1%7D%7D%7D%5E%7B%5Cinfty%7D%7D\" title=\"sum_(n=1)^oo\" style=\"vertical-align: middle;\"></span> <br data-mce-bogus=\"1\"></p>', 1, 1, 'sC9WjPCGj01A9n20RPer.txt', '2020-05-19 22:35:29', '2020-05-19 22:35:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `QuestionsID` int(8) NOT NULL,
  `Question` varchar(100) DEFAULT NULL,
  `Attachment` varchar(100) DEFAULT NULL,
  `rotate_options` int(2) NOT NULL DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `RevisionNumber` int(8) DEFAULT NULL,
  `QuestionNumber` int(8) DEFAULT NULL,
  `CurrentFlag` int(8) DEFAULT NULL,
  `QuestionCategoryID` int(8) DEFAULT NULL,
  `QuestionTypeID` int(8) DEFAULT NULL,
  `TopicsID` int(8) DEFAULT NULL,
  `SubjectID` int(8) DEFAULT NULL,
  `AddedByUserID` int(8) DEFAULT NULL,
  `UpdatedByUserID` int(8) DEFAULT NULL,
  `ApprovedByUserID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`QuestionsID`, `Question`, `Attachment`, `rotate_options`, `CreatedDate`, `UpdatedDate`, `RevisionNumber`, `QuestionNumber`, `CurrentFlag`, `QuestionCategoryID`, `QuestionTypeID`, `TopicsID`, `SubjectID`, `AddedByUserID`, `UpdatedByUserID`, `ApprovedByUserID`, `IsActive`) VALUES
(1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(3, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(4, '<p>question</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(5, '<p>question</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(6, '<p>question</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(7, '<p>question</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(8, '<p>question</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(9, '<p><span class=\"AM\">`sqrt(5)&nbsp;`</span>&nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(10, '<p><span class=\"AM\">`sqrt(9)`</span></p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(11, '<p><span class=\"AM\">`sqrt(x)`</span></p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(12, '<p><span class=\"AM\">`x_(mn)`</span>&nbsp; and this is text&nbsp;</p>', NULL, 0, '2020-05-15 16:07:02', '2020-05-15 16:07:02', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(13, '<p><span class=\"AM\">`quad`</span> <span class=\"AM\">`sqrt(x)`</span></p>', NULL, 0, '2020-05-15 16:25:31', '2020-05-15 16:25:31', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(14, '<p><span class=\"AM\">`quad`</span> <span class=\"AM\">`sqrt(x)`</span></p>', '32R6Wr9R3WA93993sA31.mpga', 0, '2020-05-15 16:26:19', '2020-05-15 16:26:19', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(15, '<p><span class=\"AM\">`quad`</span> <span class=\"AM\">`sqrt(x)`</span></p>', 'reRG69AWrn2rjPP1WRjj.mpga', 0, '2020-05-15 16:26:42', '2020-05-15 16:26:42', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(16, '<p>question text</p>', NULL, 0, '2020-05-15 16:35:01', '2020-05-15 16:35:01', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(17, '<p><span class=\"AM\">`dy/dx`</span></p>', NULL, 0, '2020-05-15 16:37:49', '2020-05-15 16:37:49', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(18, '<p><span class=\"AM\">``</span></p>', NULL, 0, '2020-05-15 16:38:20', '2020-05-15 16:38:20', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(19, '<p><span class=\"AM\">`lim_(x-&gt;oo)`</span></p>', NULL, 1, '2020-05-15 16:40:37', '2020-05-15 16:40:37', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(20, '<p><span class=\"AM\">`lim_(x-&gt;oo)`</span></p>', NULL, 1, '2020-05-15 16:42:01', '2020-05-15 16:42:01', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(21, '<p><span class=\"AM\">`lim_(x-&gt;oo)`</span></p>', NULL, 1, '2020-05-15 16:42:56', '2020-05-15 16:42:56', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(22, '<p><span class=\"AM\">`x^(6+7)`</span>&nbsp; this is the question.</p>', 'ennG99CR31r29AWsr9e9.mpga', 1, '2020-05-16 07:55:39', '2020-05-16 07:55:39', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(26, '<p><span class=\"AM\">`root(n)(x)`</span></p>', NULL, 1, '2020-05-19 16:10:34', '2020-05-19 16:10:34', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(28, '<p>testing one</p>', NULL, 1, '2020-05-19 22:08:11', '2020-05-19 22:08:11', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(29, '<p>testing one</p>', NULL, 1, '2020-05-19 22:08:57', '2020-05-19 22:08:57', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(30, '<p>chech 2</p>', 'r9962239rG33j996G6e9.html', 1, '2020-05-19 22:13:00', '2020-05-19 22:13:00', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(31, '<p>tst audio upload</p>', 'jCC30112Aj0663r9r96G.html', 1, '2020-05-19 22:24:45', '2020-05-19 22:24:45', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(32, '<p>test audio question</p>', NULL, 1, '2020-05-19 22:27:28', '2020-05-19 22:27:28', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(33, '<p>vonkdoth</p>', NULL, 1, '2020-05-19 22:31:35', '2020-05-19 22:31:35', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(34, '<p><span class=\"AM\">`x^(m+n)`</span></p>', NULL, 1, '2020-05-19 22:33:36', '2020-05-19 22:33:36', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(35, '<p><span class=\"AM\">`x^(m+n)`</span></p>', NULL, 1, '2020-05-19 22:34:10', '2020-05-19 22:34:10', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
(36, '<p><span class=\"AM\">``</span></p>', NULL, 1, '2020-05-19 22:35:29', '2020-05-19 22:35:29', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `questiontype`
--

CREATE TABLE `questiontype` (
  `QuestionTypeID` int(8) NOT NULL,
  `QuestionType` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questiontype`
--

INSERT INTO `questiontype` (`QuestionTypeID`, `QuestionType`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(1, 'MC', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `relationshiptype`
--

CREATE TABLE `relationshiptype` (
  `RelationshipTypeID` int(8) NOT NULL,
  `RelationshipType` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `SchoolsID` int(8) NOT NULL,
  `SchoolName` varchar(100) DEFAULT NULL,
  `SchoolSubDomain` varchar(100) NOT NULL,
  `AddressID` int(8) DEFAULT NULL,
  `CreatedByUserID` int(8) DEFAULT NULL,
  `KeyAdminUserID` int(8) DEFAULT NULL,
  `DistrictAdminUserID` int(8) DEFAULT NULL,
  `DistrictID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ParentSchoolsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`SchoolsID`, `SchoolName`, `SchoolSubDomain`, `AddressID`, `CreatedByUserID`, `KeyAdminUserID`, `DistrictAdminUserID`, `DistrictID`, `CreatedDate`, `UpdatedDate`, `ParentSchoolsID`, `IsActive`) VALUES
(6, 'Virginia County school', 'virginiacountyschool', 12, 4, 5, 4, NULL, '2020-05-02 13:21:59', '2020-05-02 13:21:59', NULL, '1'),
(14, 'Alaska County School', 'alaskacountyschool', 12, 5, 5, 5, NULL, '2020-05-02 13:25:27', '2020-05-02 13:25:27', 6, '1'),
(15, 'Alabama County School', 'alabamacountyschool', 14, 5, 4, 5, NULL, '2020-05-02 13:25:45', '2020-05-02 13:25:45', 6, '1'),
(16, 'Colorado county school', 'coloradocountryschool', 12, 5, 8, 5, NULL, '2020-05-02 14:48:47', '2020-05-02 14:48:47', 6, '1'),
(17, 'TestSchoolName', 'TestSchoolDomain', 14, 5, 4, 5, NULL, '2020-05-02 14:52:29', '2020-05-02 14:52:29', 6, '1'),
(18, 'TestSchoolName', 'TestSchoolDomain1', 14, 5, 4, 5, NULL, '2020-05-02 15:17:24', '2020-05-02 15:17:24', 6, '1'),
(19, 'schoolname', 'schooldomain', 14, 5, 4, 5, NULL, '2020-05-02 15:21:26', '2020-05-02 15:21:26', 6, '1'),
(20, 'School Name Test2', 'schoolnametest2', 17, 5, 4, 5, NULL, '2020-05-02 16:23:57', '2020-05-02 16:23:57', 6, '1'),
(21, 'Alabama county school8', 'alabamacountyschool8', 19, 5, 4, 5, NULL, '2020-05-02 20:42:57', '2020-05-02 20:42:57', 6, '1'),
(22, 'test school', 'testschool', 14, 5, 4, 5, NULL, '2020-05-14 09:45:29', '2020-05-14 09:45:29', 6, '1');

-- --------------------------------------------------------

--
-- Table structure for table `sociallinks`
--

CREATE TABLE `sociallinks` (
  `SocialLinkID` int(8) NOT NULL,
  `SocialLinkURL` varchar(100) DEFAULT NULL,
  `LinkUserID` varchar(100) DEFAULT NULL,
  `SocialLinkTypeID` int(8) DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `SchoolsID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sociallinktype`
--

CREATE TABLE `sociallinktype` (
  `SocialLinkTypeID` int(8) NOT NULL,
  `SocialLinkType` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `LinkPrefix` varchar(100) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `StateID` int(8) NOT NULL,
  `CountryID` int(45) NOT NULL,
  `StateName` varchar(45) DEFAULT NULL,
  `StateCode` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`StateID`, `CountryID`, `StateName`, `StateCode`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(2, 4, 'Alabama', NULL, '2020-04-29 16:33:53', '2020-04-29 16:33:53', '1'),
(3, 4, 'Washington', NULL, '2020-04-30 23:02:26', '2020-04-30 23:02:26', '1'),
(6, 4, 'Colorado', 'cr', '2020-05-02 14:36:06', '2020-05-02 14:36:06', '0');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SubjectID` int(8) NOT NULL,
  `SubjectName` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ClassesID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SubjectID`, `SubjectName`, `CreatedDate`, `UpdatedDate`, `ClassesID`, `IsActive`) VALUES
(1, 'Maths', NULL, NULL, NULL, '1'),
(2, 'Physics', '2020-05-08 22:50:53', '2020-05-08 22:50:53', NULL, '1'),
(3, 'Chemistry', '2020-05-09 07:37:04', '2020-05-09 07:37:04', NULL, '1'),
(4, 'Chemistry', '2020-05-09 07:37:04', '2020-05-09 07:37:04', NULL, '1'),
(5, 'Chemistry', '2020-05-09 07:37:04', '2020-05-09 07:37:04', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `SubscriptionID` int(8) NOT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `LastPaymentDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `SubscriptionTypeID` int(8) DEFAULT NULL,
  `SubscriptionTermsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptionterms`
--

CREATE TABLE `subscriptionterms` (
  `SubscriptionTermsID` int(8) NOT NULL,
  `SubscriptionTypeID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptiontype`
--

CREATE TABLE `subscriptiontype` (
  `SubscriptionTypeID` int(8) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptionusers`
--

CREATE TABLE `subscriptionusers` (
  `SubscriptionUsersID` int(8) NOT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `SubscriptionID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testanswers`
--

CREATE TABLE `testanswers` (
  `TestAnswersID` int(8) NOT NULL,
  `SortOrder` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `AnswersID` int(8) DEFAULT NULL,
  `TestQuestionsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testquestions`
--

CREATE TABLE `testquestions` (
  `TestQuestionsID` int(8) NOT NULL,
  `SortOrder` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `QuestionsID` int(8) DEFAULT NULL,
  `TestsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testresponses`
--

CREATE TABLE `testresponses` (
  `TestResponsesID` int(8) NOT NULL,
  `Response` varchar(100) DEFAULT NULL,
  `IsCorrectResponseFlag` varchar(100) DEFAULT NULL,
  `AllocatedMarks` int(8) DEFAULT NULL,
  `ResponseDateTime` datetime DEFAULT NULL,
  `QuestionViewedFlag` varchar(100) DEFAULT NULL,
  `TimeSpentOnQuestion` int(8) DEFAULT NULL,
  `QuestionSkippedFlag` varchar(100) DEFAULT NULL,
  `TotalQuestions` int(8) DEFAULT NULL,
  `AssessmentID` int(8) DEFAULT NULL,
  `QuestionsID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `TestsID` int(8) NOT NULL,
  `TestName` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `TestStartDate` datetime DEFAULT NULL,
  `TimetoComplete` varchar(100) DEFAULT NULL,
  `SharedFlag` varchar(100) DEFAULT NULL,
  `CreatedByUserID` int(8) DEFAULT NULL,
  `TopicsID` int(8) DEFAULT NULL,
  `ClassesID` int(8) DEFAULT NULL,
  `BaseTestsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testshare`
--

CREATE TABLE `testshare` (
  `TestShareID` int(8) NOT NULL,
  `ReadOnly` int(8) DEFAULT NULL,
  `UpdateAccess` int(8) DEFAULT NULL,
  `ReuseFlag` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `SharedWithUserID` int(8) DEFAULT NULL,
  `TestsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `TopicsID` int(8) NOT NULL,
  `TopicName` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `DepthNumber` int(8) DEFAULT NULL,
  `CreatedByUserID` int(8) DEFAULT NULL,
  `ClassesID` int(8) DEFAULT NULL,
  `CourseID` int(25) NOT NULL,
  `ParentTopicsID` int(8) DEFAULT NULL,
  `RootTopicsID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`TopicsID`, `TopicName`, `Description`, `CreatedDate`, `UpdatedDate`, `DepthNumber`, `CreatedByUserID`, `ClassesID`, `CourseID`, `ParentTopicsID`, `RootTopicsID`, `IsActive`, `updated_at`, `created_at`) VALUES
(1, 'yes', NULL, '2020-05-22 19:47:12', '2020-05-22 19:47:12', 1, NULL, NULL, 0, NULL, NULL, '1', '2020-05-23 13:14:31', '2020-05-23 13:14:31'),
(2, 'Realnumbers', NULL, '2020-05-23 08:01:39', '2020-05-23 08:01:39', 1, NULL, NULL, 0, NULL, NULL, '1', '2020-05-23 13:14:31', '2020-05-23 13:14:31'),
(3, 'Topic name', NULL, '2020-05-23 15:59:54', '2020-05-23 15:59:54', 1, NULL, NULL, 0, NULL, NULL, '1', '2020-05-23 13:14:31', '2020-05-23 13:14:31'),
(4, 'Topic name1.1', NULL, '2020-05-23 16:04:43', '2020-05-23 16:04:43', 1, NULL, NULL, 0, NULL, NULL, '1', '2020-05-23 13:14:31', '2020-05-23 13:14:31'),
(5, 'Topic name1.1.1', NULL, '2020-05-23 16:04:57', '2020-05-23 16:04:57', 1, NULL, NULL, 0, NULL, NULL, '1', '2020-05-23 13:14:31', '2020-05-23 13:14:31'),
(6, 'Test topic name 1', NULL, '2020-05-23 16:33:56', '2020-05-23 16:33:56', 1, NULL, NULL, 7, NULL, NULL, '1', '2020-05-23 13:14:31', '2020-05-23 13:14:31'),
(7, 'Course2 Topic1.1', NULL, '2020-05-23 16:34:16', '2020-05-23 16:34:16', 2, NULL, NULL, 7, NULL, NULL, '1', '2020-05-23 13:14:31', '2020-05-23 13:14:31'),
(8, 'Course2 topic1.1.1', NULL, '2020-05-23 16:34:31', '2020-05-23 16:34:31', 2, NULL, NULL, 7, NULL, NULL, '1', '2020-05-23 13:14:31', '2020-05-23 13:14:31'),
(9, 'Course2 Topic1 updated', NULL, '2020-05-23 16:34:47', '2020-05-23 16:34:47', 1, NULL, NULL, 7, NULL, NULL, '1', '2020-05-23 13:14:31', '2020-05-23 13:14:31'),
(10, 'Course2 topic 1.1 updated', NULL, '2020-05-23 16:37:00', '2020-05-23 16:37:00', 2, NULL, NULL, 7, NULL, NULL, '1', '2020-05-23 13:14:31', '2020-05-23 13:14:31'),
(31, 'Topicname1', NULL, '2020-05-23 20:00:39', '2020-05-23 20:00:39', 1, NULL, NULL, 6, NULL, NULL, '1', '2020-05-23 14:30:39', '2020-05-23 14:30:39'),
(32, 'Topicname1.1', NULL, '2020-05-23 20:01:20', '2020-05-23 20:01:20', 2, NULL, NULL, 6, NULL, NULL, '1', '2020-05-23 14:31:20', '2020-05-23 14:31:20'),
(33, 'Topicname1.1.1', NULL, '2020-05-23 20:01:28', '2020-05-23 20:01:28', 2, NULL, NULL, 6, NULL, NULL, '1', '2020-05-23 14:31:28', '2020-05-23 14:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `usergroupmembers`
--

CREATE TABLE `usergroupmembers` (
  `UserGroupMemberID` int(8) NOT NULL,
  `RemovedFlag` varchar(100) DEFAULT NULL,
  `MemberAddedDate` datetime DEFAULT NULL,
  `MemberRemovedDate` datetime DEFAULT NULL,
  `MemberUserID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `UserGroupID` int(8) NOT NULL,
  `GroupName` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedByUserID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `UserPermissionsID` int(8) NOT NULL,
  `GrantedDate` datetime DEFAULT NULL,
  `RevokedDate` datetime DEFAULT NULL,
  `GrantabletoSubFlag` varchar(100) DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `AccessPermissionsID` int(8) DEFAULT NULL,
  `GrantorUserID` int(8) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userrelationships`
--

CREATE TABLE `userrelationships` (
  `UserRelationshipID` int(8) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `RelatedUserID` int(8) DEFAULT NULL,
  `RelationshipTypeID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `UserTypeID` int(8) DEFAULT NULL,
  `AddressID` int(8) DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `created_at`, `updated_at`, `UserTypeID`, `AddressID`, `IsActive`, `password`) VALUES
(1, 'sowmya', '', '', 'sowmya@testprepapp.com', '2020-04-21 10:29:19', '2020-04-21 10:29:19', 1, NULL, '1', '$2y$10$gjgXYNFiTzTjcNrrkICMfuBWUfC8HkZ8RE/VlMbMBEVI0NjYOGKda'),
(4, 'Sravan', 'Sravan', 'Bhaskaravajjula', 'webdeveloper.sravan@gmail.com', NULL, NULL, 5, 11, '1', '$2y$10$CBQpCYYIxrRiKMYGhwyhu.T7wSj.t8QXU.AIsQ5e/UgAPd/pYVDXi'),
(5, 'Sravan', 'Sravan', 'Kumar', 'sravan@testprepapp.com', '2020-04-30 14:37:24', '2020-04-30 14:37:24', 1, 11, '1', '$2y$10$jqsdfumtazW6L4kxnfQUi.XdBp8oBZlWuWz.PCJAI.dZEP0y0yRI.'),
(6, 'Nikath', 'Nikath', 'Nikath', 'nikath@testprepapp.com', '2020-05-01 08:00:22', '2020-05-01 08:00:22', 5, 12, '1', '$2y$10$UsYZo.ombztrzpAaZuwNOuXIziukP.AvUM5JVMP99ofla04N4m9Yy'),
(7, 'Vamshi', 'Vamshi', 'Utamaraju', 'vamshi@testprepapp.com', '2020-05-01 08:34:02', '2020-05-01 08:34:02', 5, 12, '1', '$2y$10$GxG37./wz5H3YQY9kLmhxO9s1MWOva7AhmUSUcg/4otVxs2H84JxW'),
(8, 'Hari', 'Hari', 'Vankdoth', 'hari@testprepapp.com', '2020-05-02 14:39:49', '2020-05-02 14:39:49', 5, 15, '1', '$2y$10$qA7YFvaPkWno9RWsGmsmQ.giTtKCVGYLru5KLbzTDA4f92q727n5m'),
(10, 'test', 'test', 'email', 'test@email.com', '2020-05-14 09:41:47', '2020-05-14 09:41:47', 5, 20, '1', '$2y$10$UUUnBlhmfzQEmBGD8Wkf8uwd.dtXzti2cB7ld8CPsOW.SIWaR4H9u');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `UserTypeID` int(8) NOT NULL,
  `UserType` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`UserTypeID`, `UserType`, `CreatedDate`, `UpdatedDate`, `IsActive`) VALUES
(1, 'SuperAdmin', '2020-04-29 15:05:17', '2020-04-29 15:05:17', '1'),
(2, 'ContentProvider', '2020-04-29 23:04:32', '2020-04-29 23:04:32', '1'),
(3, 'ContentApprover', '2020-04-29 23:04:32', '2020-04-29 23:04:32', '1'),
(4, 'DistrictAdmin', '2020-04-29 23:05:14', '2020-04-29 23:05:14', '1'),
(5, 'SchoolAdmin', '2020-04-29 23:05:14', '2020-04-29 23:05:14', '1'),
(6, 'Teacher', '2020-04-29 23:06:32', '2020-04-29 23:06:32', '1'),
(7, 'Parent', '2020-04-29 23:06:32', '2020-04-29 23:06:32', '1'),
(8, 'Student', '2020-04-29 23:06:32', '2020-04-29 23:06:32', '1'),
(9, 'TechSupport', '2020-05-01 17:58:06', '2020-05-01 17:58:06', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `VoucherID` int(8) NOT NULL,
  `VocherCode` varchar(100) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zipmaptocity`
--

CREATE TABLE `zipmaptocity` (
  `ZipMaptoCityID` int(8) NOT NULL,
  `Zip` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `IsActive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesspermissions`
--
ALTER TABLE `accesspermissions`
  ADD PRIMARY KEY (`AccessPermissionsID`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`AddressID`),
  ADD KEY `StateID` (`StateID`),
  ADD KEY `CountryID` (`CountryID`) USING BTREE;

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`AnswersID`),
  ADD KEY `QuestionNumber` (`QuestionNumber`);

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`AssessmentID`),
  ADD KEY `AssignedByUserID` (`AssignedByUserID`),
  ADD KEY `AssignedToUserID` (`AssignedToUserID`),
  ADD KEY `TestsID` (`TestsID`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`AttachmentID`),
  ADD KEY `EmailsID` (`EmailsID`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`ClassesID`);

--
-- Indexes for table `contentapprovers`
--
ALTER TABLE `contentapprovers`
  ADD PRIMARY KEY (`ContentApproversID`),
  ADD KEY `ContentsID` (`ContentsID`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`ContentsID`),
  ADD KEY `AddedByUserID` (`AddedByUserID`),
  ADD KEY `TopicsID` (`TopicsID`);

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`CountyID`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`CountriesID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`CurrencyID`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`DistrictID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`DocumentsID`),
  ADD KEY `DocumentTypeID` (`DocumentTypeID`),
  ADD KEY `TopicsID` (`TopicsID`);

--
-- Indexes for table `documenttype`
--
ALTER TABLE `documenttype`
  ADD PRIMARY KEY (`DocumentTypeID`);

--
-- Indexes for table `emailreceipients`
--
ALTER TABLE `emailreceipients`
  ADD PRIMARY KEY (`EmailReceipientsID`),
  ADD KEY `EmailsID` (`EmailsID`),
  ADD KEY `ReceiverUserID` (`ReceiverUserID`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`EmailsID`),
  ADD KEY `SenderUserID` (`SenderUserID`),
  ADD KEY `EmailTemplateID` (`EmailTemplateID`),
  ADD KEY `ParentEmailsID` (`ParentEmailsID`);

--
-- Indexes for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  ADD PRIMARY KEY (`EmailTemplateID`);

--
-- Indexes for table `forumquestions`
--
ALTER TABLE `forumquestions`
  ADD PRIMARY KEY (`ForumID`),
  ADD KEY `ForumSectionsID` (`ForumSectionsID`);

--
-- Indexes for table `forumresponses`
--
ALTER TABLE `forumresponses`
  ADD PRIMARY KEY (`ForumResponsesID`),
  ADD KEY `ForumSectionsID` (`ForumSectionsID`),
  ADD KEY `ForumID` (`ForumID`);

--
-- Indexes for table `forumsections`
--
ALTER TABLE `forumsections`
  ADD PRIMARY KEY (`ForumSectionsID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GradeID`);

--
-- Indexes for table `learningresources`
--
ALTER TABLE `learningresources`
  ADD PRIMARY KEY (`LearningresourceID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`MessagesID`),
  ADD KEY `SenderUserID` (`SenderUserID`),
  ADD KEY `ReceiverUserID` (`ReceiverUserID`),
  ADD KEY `UserGroupID` (`UserGroupID`),
  ADD KEY `ParentMessagesID` (`ParentMessagesID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrdersID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `SubscriptionID` (`SubscriptionID`),
  ADD KEY `CurrencyID` (`CurrencyID`);

--
-- Indexes for table `ordershistory`
--
ALTER TABLE `ordershistory`
  ADD PRIMARY KEY (`OrdersHistoryID`),
  ADD KEY `OrdersID` (`OrdersID`);

--
-- Indexes for table `paymentcardtype`
--
ALTER TABLE `paymentcardtype`
  ADD PRIMARY KEY (`PaymentCardTypeID`);

--
-- Indexes for table `paymenthistory`
--
ALTER TABLE `paymenthistory`
  ADD PRIMARY KEY (`PaymentHistoryID`),
  ADD KEY `PaymentCardTypeID` (`PaymentCardTypeID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `SubscriptionID` (`SubscriptionID`),
  ADD KEY `OrdersID` (`OrdersID`),
  ADD KEY `CurrencyID` (`CurrencyID`);

--
-- Indexes for table `questioncategory`
--
ALTER TABLE `questioncategory`
  ADD PRIMARY KEY (`QuestionCategoryID`);

--
-- Indexes for table `questionoptions`
--
ALTER TABLE `questionoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QuestionsID`),
  ADD KEY `QuestionCategoryID` (`QuestionCategoryID`),
  ADD KEY `QuestionTypeID` (`QuestionTypeID`),
  ADD KEY `TopicsID` (`TopicsID`),
  ADD KEY `SubjectID` (`SubjectID`),
  ADD KEY `AddedByUserID` (`AddedByUserID`),
  ADD KEY `UpdatedByUserID` (`UpdatedByUserID`),
  ADD KEY `ApprovedByUserID` (`ApprovedByUserID`);

--
-- Indexes for table `questiontype`
--
ALTER TABLE `questiontype`
  ADD PRIMARY KEY (`QuestionTypeID`);

--
-- Indexes for table `relationshiptype`
--
ALTER TABLE `relationshiptype`
  ADD PRIMARY KEY (`RelationshipTypeID`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`SchoolsID`),
  ADD KEY `AddressID` (`AddressID`),
  ADD KEY `CreatedByUserID` (`CreatedByUserID`),
  ADD KEY `KeyAdminUserID` (`KeyAdminUserID`),
  ADD KEY `DistrictAdminUserID` (`DistrictAdminUserID`),
  ADD KEY `DistrictID` (`DistrictID`),
  ADD KEY `ParentSchoolsID` (`ParentSchoolsID`);

--
-- Indexes for table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD PRIMARY KEY (`SocialLinkID`),
  ADD KEY `SocialLinkTypeID` (`SocialLinkTypeID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `SchoolsID` (`SchoolsID`);

--
-- Indexes for table `sociallinktype`
--
ALTER TABLE `sociallinktype`
  ADD PRIMARY KEY (`SocialLinkTypeID`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`StateID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SubjectID`),
  ADD KEY `ClassesID` (`ClassesID`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`SubscriptionID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `SubscriptionTypeID` (`SubscriptionTypeID`),
  ADD KEY `SubscriptionTermsID` (`SubscriptionTermsID`);

--
-- Indexes for table `subscriptionterms`
--
ALTER TABLE `subscriptionterms`
  ADD PRIMARY KEY (`SubscriptionTermsID`),
  ADD KEY `SubscriptionTypeID` (`SubscriptionTypeID`);

--
-- Indexes for table `subscriptiontype`
--
ALTER TABLE `subscriptiontype`
  ADD PRIMARY KEY (`SubscriptionTypeID`);

--
-- Indexes for table `subscriptionusers`
--
ALTER TABLE `subscriptionusers`
  ADD PRIMARY KEY (`SubscriptionUsersID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `SubscriptionID` (`SubscriptionID`);

--
-- Indexes for table `testanswers`
--
ALTER TABLE `testanswers`
  ADD PRIMARY KEY (`TestAnswersID`),
  ADD KEY `AnswersID` (`AnswersID`),
  ADD KEY `TestQuestionsID` (`TestQuestionsID`);

--
-- Indexes for table `testquestions`
--
ALTER TABLE `testquestions`
  ADD PRIMARY KEY (`TestQuestionsID`),
  ADD KEY `QuestionsID` (`QuestionsID`),
  ADD KEY `TestsID` (`TestsID`);

--
-- Indexes for table `testresponses`
--
ALTER TABLE `testresponses`
  ADD PRIMARY KEY (`TestResponsesID`),
  ADD KEY `AssessmentID` (`AssessmentID`),
  ADD KEY `QuestionsID` (`QuestionsID`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`TestsID`),
  ADD KEY `CreatedByUserID` (`CreatedByUserID`),
  ADD KEY `TopicsID` (`TopicsID`),
  ADD KEY `ClassesID` (`ClassesID`),
  ADD KEY `BaseTestsID` (`BaseTestsID`);

--
-- Indexes for table `testshare`
--
ALTER TABLE `testshare`
  ADD PRIMARY KEY (`TestShareID`),
  ADD KEY `SharedWithUserID` (`SharedWithUserID`),
  ADD KEY `TestsID` (`TestsID`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`TopicsID`),
  ADD KEY `CreatedByUserID` (`CreatedByUserID`),
  ADD KEY `ClassesID` (`ClassesID`),
  ADD KEY `ParentTopicsID` (`ParentTopicsID`),
  ADD KEY `RootTopicsID` (`RootTopicsID`);

--
-- Indexes for table `usergroupmembers`
--
ALTER TABLE `usergroupmembers`
  ADD PRIMARY KEY (`UserGroupMemberID`),
  ADD KEY `MemberUserID` (`MemberUserID`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`UserGroupID`),
  ADD KEY `CreatedByUserID` (`CreatedByUserID`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`UserPermissionsID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `AccessPermissionsID` (`AccessPermissionsID`),
  ADD KEY `GrantorUserID` (`GrantorUserID`);

--
-- Indexes for table `userrelationships`
--
ALTER TABLE `userrelationships`
  ADD PRIMARY KEY (`UserRelationshipID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `RelatedUserID` (`RelatedUserID`),
  ADD KEY `RelationshipTypeID` (`RelationshipTypeID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserTypeID` (`UserTypeID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`UserTypeID`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`VoucherID`);

--
-- Indexes for table `zipmaptocity`
--
ALTER TABLE `zipmaptocity`
  ADD PRIMARY KEY (`ZipMaptoCityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesspermissions`
--
ALTER TABLE `accesspermissions`
  MODIFY `AccessPermissionsID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `AddressID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `AnswersID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `AssessmentID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `AttachmentID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `ClassesID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contentapprovers`
--
ALTER TABLE `contentapprovers`
  MODIFY `ContentApproversID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `ContentsID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counties`
--
ALTER TABLE `counties`
  MODIFY `CountyID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `CountriesID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `CourseID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `CurrencyID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `DistrictID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `DocumentsID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documenttype`
--
ALTER TABLE `documenttype`
  MODIFY `DocumentTypeID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailreceipients`
--
ALTER TABLE `emailreceipients`
  MODIFY `EmailReceipientsID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `EmailsID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  MODIFY `EmailTemplateID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forumquestions`
--
ALTER TABLE `forumquestions`
  MODIFY `ForumID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forumresponses`
--
ALTER TABLE `forumresponses`
  MODIFY `ForumResponsesID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forumsections`
--
ALTER TABLE `forumsections`
  MODIFY `ForumSectionsID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GradeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `learningresources`
--
ALTER TABLE `learningresources`
  MODIFY `LearningresourceID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `MessagesID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrdersID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordershistory`
--
ALTER TABLE `ordershistory`
  MODIFY `OrdersHistoryID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentcardtype`
--
ALTER TABLE `paymentcardtype`
  MODIFY `PaymentCardTypeID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymenthistory`
--
ALTER TABLE `paymenthistory`
  MODIFY `PaymentHistoryID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questioncategory`
--
ALTER TABLE `questioncategory`
  MODIFY `QuestionCategoryID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questionoptions`
--
ALTER TABLE `questionoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1388;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `QuestionsID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `questiontype`
--
ALTER TABLE `questiontype`
  MODIFY `QuestionTypeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `relationshiptype`
--
ALTER TABLE `relationshiptype`
  MODIFY `RelationshipTypeID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `SchoolsID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sociallinks`
--
ALTER TABLE `sociallinks`
  MODIFY `SocialLinkID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sociallinktype`
--
ALTER TABLE `sociallinktype`
  MODIFY `SocialLinkTypeID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `StateID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SubjectID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `SubscriptionID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptionterms`
--
ALTER TABLE `subscriptionterms`
  MODIFY `SubscriptionTermsID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptiontype`
--
ALTER TABLE `subscriptiontype`
  MODIFY `SubscriptionTypeID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptionusers`
--
ALTER TABLE `subscriptionusers`
  MODIFY `SubscriptionUsersID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testanswers`
--
ALTER TABLE `testanswers`
  MODIFY `TestAnswersID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testquestions`
--
ALTER TABLE `testquestions`
  MODIFY `TestQuestionsID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testresponses`
--
ALTER TABLE `testresponses`
  MODIFY `TestResponsesID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `TestsID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testshare`
--
ALTER TABLE `testshare`
  MODIFY `TestShareID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `TopicsID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `usergroupmembers`
--
ALTER TABLE `usergroupmembers`
  MODIFY `UserGroupMemberID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `UserGroupID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `UserPermissionsID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userrelationships`
--
ALTER TABLE `userrelationships`
  MODIFY `UserRelationshipID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `UserTypeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `VoucherID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zipmaptocity`
--
ALTER TABLE `zipmaptocity`
  MODIFY `ZipMaptoCityID` int(8) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `Address_ibfk_1` FOREIGN KEY (`CountryID`) REFERENCES `countries` (`CountriesID`),
  ADD CONSTRAINT `Address_ibfk_2` FOREIGN KEY (`StateID`) REFERENCES `states` (`StateID`);

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `Answers_ibfk_1` FOREIGN KEY (`QuestionNumber`) REFERENCES `questions` (`QuestionsID`);

--
-- Constraints for table `assessments`
--
ALTER TABLE `assessments`
  ADD CONSTRAINT `Assessments_ibfk_1` FOREIGN KEY (`AssignedByUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Assessments_ibfk_2` FOREIGN KEY (`AssignedToUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Assessments_ibfk_3` FOREIGN KEY (`TestsID`) REFERENCES `tests` (`TestsID`);

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `Attachments_ibfk_1` FOREIGN KEY (`EmailsID`) REFERENCES `emails` (`EmailsID`);

--
-- Constraints for table `contentapprovers`
--
ALTER TABLE `contentapprovers`
  ADD CONSTRAINT `ContentApprovers_ibfk_1` FOREIGN KEY (`ContentsID`) REFERENCES `contents` (`ContentsID`);

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `Contents_ibfk_1` FOREIGN KEY (`AddedByUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Contents_ibfk_2` FOREIGN KEY (`TopicsID`) REFERENCES `topics` (`TopicsID`);

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `Districts_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`);

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `Documents_ibfk_1` FOREIGN KEY (`DocumentTypeID`) REFERENCES `documenttype` (`DocumentTypeID`),
  ADD CONSTRAINT `Documents_ibfk_2` FOREIGN KEY (`TopicsID`) REFERENCES `topics` (`TopicsID`);

--
-- Constraints for table `emailreceipients`
--
ALTER TABLE `emailreceipients`
  ADD CONSTRAINT `EmailReceipients_ibfk_1` FOREIGN KEY (`EmailsID`) REFERENCES `emails` (`EmailsID`),
  ADD CONSTRAINT `EmailReceipients_ibfk_2` FOREIGN KEY (`ReceiverUserID`) REFERENCES `users` (`id`);

--
-- Constraints for table `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `Emails_ibfk_1` FOREIGN KEY (`SenderUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Emails_ibfk_2` FOREIGN KEY (`EmailTemplateID`) REFERENCES `emailtemplates` (`EmailTemplateID`),
  ADD CONSTRAINT `Emails_ibfk_3` FOREIGN KEY (`ParentEmailsID`) REFERENCES `emails` (`EmailsID`);

--
-- Constraints for table `forumquestions`
--
ALTER TABLE `forumquestions`
  ADD CONSTRAINT `ForumQuestions_ibfk_1` FOREIGN KEY (`ForumSectionsID`) REFERENCES `forumsections` (`ForumSectionsID`);

--
-- Constraints for table `forumresponses`
--
ALTER TABLE `forumresponses`
  ADD CONSTRAINT `ForumResponses_ibfk_1` FOREIGN KEY (`ForumSectionsID`) REFERENCES `forumsections` (`ForumSectionsID`),
  ADD CONSTRAINT `ForumResponses_ibfk_2` FOREIGN KEY (`ForumID`) REFERENCES `forumquestions` (`ForumID`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `Messages_ibfk_1` FOREIGN KEY (`SenderUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Messages_ibfk_2` FOREIGN KEY (`ReceiverUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Messages_ibfk_3` FOREIGN KEY (`UserGroupID`) REFERENCES `usergroups` (`UserGroupID`),
  ADD CONSTRAINT `Messages_ibfk_4` FOREIGN KEY (`ParentMessagesID`) REFERENCES `messages` (`MessagesID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`SubscriptionID`) REFERENCES `subscriptions` (`SubscriptionID`),
  ADD CONSTRAINT `Orders_ibfk_3` FOREIGN KEY (`CurrencyID`) REFERENCES `currency` (`CurrencyID`);

--
-- Constraints for table `ordershistory`
--
ALTER TABLE `ordershistory`
  ADD CONSTRAINT `OrdersHistory_ibfk_1` FOREIGN KEY (`OrdersID`) REFERENCES `orders` (`OrdersID`);

--
-- Constraints for table `paymenthistory`
--
ALTER TABLE `paymenthistory`
  ADD CONSTRAINT `PaymentHistory_ibfk_1` FOREIGN KEY (`PaymentCardTypeID`) REFERENCES `paymentcardtype` (`PaymentCardTypeID`),
  ADD CONSTRAINT `PaymentHistory_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `PaymentHistory_ibfk_3` FOREIGN KEY (`SubscriptionID`) REFERENCES `subscriptions` (`SubscriptionID`),
  ADD CONSTRAINT `PaymentHistory_ibfk_4` FOREIGN KEY (`OrdersID`) REFERENCES `orders` (`OrdersID`),
  ADD CONSTRAINT `PaymentHistory_ibfk_5` FOREIGN KEY (`CurrencyID`) REFERENCES `currency` (`CurrencyID`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `Questions_ibfk_1` FOREIGN KEY (`QuestionCategoryID`) REFERENCES `questioncategory` (`QuestionCategoryID`),
  ADD CONSTRAINT `Questions_ibfk_2` FOREIGN KEY (`QuestionTypeID`) REFERENCES `questiontype` (`QuestionTypeID`),
  ADD CONSTRAINT `Questions_ibfk_3` FOREIGN KEY (`TopicsID`) REFERENCES `topics` (`TopicsID`),
  ADD CONSTRAINT `Questions_ibfk_4` FOREIGN KEY (`SubjectID`) REFERENCES `subjects` (`SubjectID`),
  ADD CONSTRAINT `Questions_ibfk_5` FOREIGN KEY (`AddedByUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Questions_ibfk_6` FOREIGN KEY (`UpdatedByUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Questions_ibfk_7` FOREIGN KEY (`ApprovedByUserID`) REFERENCES `users` (`id`);

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `Schools_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`),
  ADD CONSTRAINT `Schools_ibfk_2` FOREIGN KEY (`CreatedByUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Schools_ibfk_3` FOREIGN KEY (`KeyAdminUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Schools_ibfk_4` FOREIGN KEY (`DistrictAdminUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Schools_ibfk_5` FOREIGN KEY (`DistrictID`) REFERENCES `districts` (`DistrictID`),
  ADD CONSTRAINT `Schools_ibfk_6` FOREIGN KEY (`ParentSchoolsID`) REFERENCES `schools` (`SchoolsID`);

--
-- Constraints for table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD CONSTRAINT `SocialLinks_ibfk_1` FOREIGN KEY (`SocialLinkTypeID`) REFERENCES `sociallinktype` (`SocialLinkTypeID`),
  ADD CONSTRAINT `SocialLinks_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `SocialLinks_ibfk_3` FOREIGN KEY (`SchoolsID`) REFERENCES `schools` (`SchoolsID`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `Subjects_ibfk_1` FOREIGN KEY (`ClassesID`) REFERENCES `classes` (`ClassesID`);

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `Subscriptions_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Subscriptions_ibfk_2` FOREIGN KEY (`SubscriptionTypeID`) REFERENCES `subscriptiontype` (`SubscriptionTypeID`),
  ADD CONSTRAINT `Subscriptions_ibfk_3` FOREIGN KEY (`SubscriptionTermsID`) REFERENCES `subscriptionterms` (`SubscriptionTermsID`);

--
-- Constraints for table `subscriptionterms`
--
ALTER TABLE `subscriptionterms`
  ADD CONSTRAINT `SubscriptionTerms_ibfk_1` FOREIGN KEY (`SubscriptionTypeID`) REFERENCES `subscriptiontype` (`SubscriptionTypeID`);

--
-- Constraints for table `subscriptionusers`
--
ALTER TABLE `subscriptionusers`
  ADD CONSTRAINT `SubscriptionUsers_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `SubscriptionUsers_ibfk_2` FOREIGN KEY (`SubscriptionID`) REFERENCES `subscriptions` (`SubscriptionID`);

--
-- Constraints for table `testanswers`
--
ALTER TABLE `testanswers`
  ADD CONSTRAINT `TestAnswers_ibfk_1` FOREIGN KEY (`AnswersID`) REFERENCES `answers` (`AnswersID`),
  ADD CONSTRAINT `TestAnswers_ibfk_2` FOREIGN KEY (`TestQuestionsID`) REFERENCES `testquestions` (`TestQuestionsID`);

--
-- Constraints for table `testquestions`
--
ALTER TABLE `testquestions`
  ADD CONSTRAINT `TestQuestions_ibfk_1` FOREIGN KEY (`QuestionsID`) REFERENCES `questions` (`QuestionsID`),
  ADD CONSTRAINT `TestQuestions_ibfk_2` FOREIGN KEY (`TestsID`) REFERENCES `tests` (`TestsID`);

--
-- Constraints for table `testresponses`
--
ALTER TABLE `testresponses`
  ADD CONSTRAINT `TestResponses_ibfk_1` FOREIGN KEY (`AssessmentID`) REFERENCES `assessments` (`AssessmentID`),
  ADD CONSTRAINT `TestResponses_ibfk_2` FOREIGN KEY (`QuestionsID`) REFERENCES `questions` (`QuestionsID`);

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `Tests_ibfk_1` FOREIGN KEY (`CreatedByUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Tests_ibfk_2` FOREIGN KEY (`TopicsID`) REFERENCES `topics` (`TopicsID`),
  ADD CONSTRAINT `Tests_ibfk_3` FOREIGN KEY (`ClassesID`) REFERENCES `classes` (`ClassesID`),
  ADD CONSTRAINT `Tests_ibfk_4` FOREIGN KEY (`BaseTestsID`) REFERENCES `tests` (`TestsID`);

--
-- Constraints for table `testshare`
--
ALTER TABLE `testshare`
  ADD CONSTRAINT `TestShare_ibfk_1` FOREIGN KEY (`SharedWithUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `TestShare_ibfk_2` FOREIGN KEY (`TestsID`) REFERENCES `tests` (`TestsID`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `Topics_ibfk_1` FOREIGN KEY (`CreatedByUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Topics_ibfk_2` FOREIGN KEY (`ClassesID`) REFERENCES `classes` (`ClassesID`),
  ADD CONSTRAINT `Topics_ibfk_3` FOREIGN KEY (`ParentTopicsID`) REFERENCES `topics` (`TopicsID`),
  ADD CONSTRAINT `Topics_ibfk_4` FOREIGN KEY (`RootTopicsID`) REFERENCES `topics` (`TopicsID`);

--
-- Constraints for table `usergroupmembers`
--
ALTER TABLE `usergroupmembers`
  ADD CONSTRAINT `UserGroupMembers_ibfk_1` FOREIGN KEY (`MemberUserID`) REFERENCES `users` (`id`);

--
-- Constraints for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD CONSTRAINT `UserGroups_ibfk_1` FOREIGN KEY (`CreatedByUserID`) REFERENCES `users` (`id`);

--
-- Constraints for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD CONSTRAINT `UserPermissions_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `UserPermissions_ibfk_2` FOREIGN KEY (`AccessPermissionsID`) REFERENCES `accesspermissions` (`AccessPermissionsID`),
  ADD CONSTRAINT `UserPermissions_ibfk_3` FOREIGN KEY (`GrantorUserID`) REFERENCES `users` (`id`);

--
-- Constraints for table `userrelationships`
--
ALTER TABLE `userrelationships`
  ADD CONSTRAINT `UserRelationships_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `UserRelationships_ibfk_2` FOREIGN KEY (`RelatedUserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `UserRelationships_ibfk_3` FOREIGN KEY (`RelationshipTypeID`) REFERENCES `relationshiptype` (`RelationshipTypeID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`UserTypeID`) REFERENCES `usertype` (`UserTypeID`),
  ADD CONSTRAINT `User_ibfk_2` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
