-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2018 at 01:24 PM
-- Server version: 5.7.19
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suitecrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('101b9347-6787-73f0-0150-5ad5f5a50a72', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('10610389-9ad5-52de-48dc-5ad5f5d1a2c9', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('10d2e62a-e0c1-3b97-2040-5ad5f57e7c17', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('114bfdb5-360c-974b-535f-5ad5f54e518f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Accounts', 'module', 90, 0),
('120ccc54-dc3d-71f2-60ea-5ad5f580f942', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('128b3bee-670c-0d3e-16fd-5ad5f59b91a5', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Accounts', 'module', 90, 0),
('133f6c0a-3452-8cc0-dbb9-5ad5f5e5aa9f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('13bb6c6d-0790-09c7-cdf7-5ad5f552d021', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('15bb0e69-88df-07e6-a50d-5ad5f5ea2c99', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('15fa05ba-52cd-3c53-ad1f-5ad5f5a77ffc', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('1816bfc9-68c5-9d51-6896-5ad5f53e7597', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('19776274-9a26-af8c-5a21-5ad5f5d14cc8', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('1aba5ccf-deeb-190e-4f81-5ad5f5cc35c5', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('1c05dadc-f983-46a0-75f3-5ad5f565a2b2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('1d46acff-02e4-b8a8-67e3-5ad5f5cd48de', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('1e89501c-7000-d3ad-6b6c-5ad5f5fc428d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('1ff35338-c803-9fc2-f26d-5ad5f5a24310', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('215073e9-8d56-c174-bd4d-5ad5f5a234bf', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('23a1f425-2e5b-2069-2b8c-5ad5f511d7b1', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('24fc9abb-ebe9-6b17-4eb6-5ad5f516199b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('25b98185-9bd5-14ce-f907-5ad5f562a2b0', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('26f23d6c-5efb-1dcf-b21a-5ad5f5b6c6f4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('2713b9be-d759-849c-8cc1-5ad5f57aa8a4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('28282a22-cec8-c413-0971-5ad5f58347c6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('2850c62c-7594-2e69-db68-5ad5f5a2c230', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('295545fc-7bb0-61db-34a1-5ad5f5884b25', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('298a0a3d-652e-b13e-dc32-5ad5f5df32a8', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('2994028e-dadb-a587-b7c0-5ad5f58670ab', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('29e0064c-372c-f607-8c72-5ad5f5b7a08b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Users', 'module', 90, 0),
('2a8889e5-a332-af91-8e1b-5ad5f5672f0f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('2aca843c-8383-d83b-b8ec-5ad5f54a4b5e', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('2bb9b94e-7e8b-4228-3138-5ad5f59531bd', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('2c06df95-d74f-5fdc-009e-5ad5f51dca7a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('2ce95a52-df5e-805c-2a2a-5ad5f5579255', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('2d100232-5212-657b-114d-5ad5f5335978', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('2d33cb2a-8712-12c9-f572-5ad5f5b1ef33', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('2e6ff38c-0a82-2b82-7bc5-5ad5f53ffb2f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('2e7a03a0-a3c1-d26b-8ab2-5ad5f596e363', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('2ec70965-d504-621f-e672-5ad5f57c04ea', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('2fb04efb-1121-609c-2fd7-5ad5f5c1230d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('30dde2aa-11b6-8d05-5f31-5ad5f50dfd71', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('329fc624-58f7-4ff9-097a-5ad5f51eaeb5', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('33f7a36b-0a31-dba8-623c-5ad5f5e61f7d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('35310b8d-2df6-9929-6874-5ad5f5c44ee0', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('365fdb39-034b-f8a0-468b-5ad5f59d2a5b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('3792fe6a-620a-e1da-eb4d-5ad5f5109db8', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('3b3f7a36-687d-b2c6-596e-5ad5f525b051', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('3c657570-47ad-afa9-ada8-5ad5f55099d4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('3c85356c-a6c4-389a-c4e0-5ad5f58a14e4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('3d465240-ef86-b5c7-ea48-5ad5f5fd64f2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('3dc24d34-1f2a-c5b7-a0cf-5ad5f5899d0d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('3e100164-7c45-071e-77f8-5ad5f584f2b6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('3e148b61-255a-58d0-eea6-5ad5f5fb1544', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('3e8cbee3-2ff5-a1bb-cd15-5ad5f58b70a0', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'SurveyQuestions', 'module', 89, 0),
('3eab9953-e269-6563-fa39-5ad5f5fb54ff', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('3f496a1a-58d9-8b16-b887-5ad5f59be222', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('3fcb1157-f2df-d2b7-9aba-5ad5f5b3edba', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('3feeddc5-98c5-7cd0-bc6e-5ad5f5ee0057', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'SurveyQuestions', 'module', 90, 0),
('3ffe8168-552c-38f5-ef6f-5ad5f524c161', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('4084033b-a396-627e-7f8b-5ad5f55a8f98', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('4107dc2a-82d7-428e-8136-5ad5f506e2af', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('413410ef-9eb6-7dd0-de73-5ad5f5a4fa03', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'SurveyQuestions', 'module', 90, 0),
('41404010-eb79-3ad1-6dfe-5ad5f539ae45', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('41b8d5b4-f552-0127-2092-5ad5f5e4e298', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('42526282-6044-e221-e6b9-5ad5f500b638', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('42856133-9fb2-d5c9-9295-5ad5f586e5b6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('42912b35-8730-711b-ff8f-5ad5f5925859', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'SurveyQuestions', 'module', 90, 0),
('42edd893-c93e-e81a-77db-5ad5f522a7d2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('4381fb13-e602-8aca-5eed-5ad5f543e620', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('43b8acb0-7a32-0967-0df9-5ad5f566c373', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('43d67469-64a4-85aa-3a05-5ad5f5cc7875', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'SurveyQuestions', 'module', 90, 0),
('441ce730-d254-79f4-dfd3-5ad5f589152a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('44240754-3276-87cb-0093-5ad5f509deb1', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('44b1c264-96fe-2e44-0464-5ad5f59db690', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('44f572b6-3ee7-a158-efbb-5ad5f5231405', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('454eaddb-2d99-c7ac-ebc1-5ad5f55ff543', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('45d6a7e0-4a6c-d008-d5b5-5ad5f5f89c51', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'SurveyQuestions', 'module', 90, 0),
('46334d0f-a72a-ac7e-8e5f-5ad5f5ebc641', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('473a9f2b-5a6f-f235-d758-5ad5f596f9fc', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'SurveyQuestions', 'module', 90, 0),
('4870e6dc-8f41-e36d-2751-5ad5f5e99cad', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Calls', 'module', 89, 0),
('48878d10-831f-eedf-0672-5ad5f514d4f1', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'SurveyQuestions', 'module', 90, 0),
('49264747-8061-ce3e-0a81-5ad5f52907f4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Tasks', 'module', 89, 0),
('49c3b0f4-75f0-82c5-ae7a-5ad5f58907ec', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('49c687b7-d836-42ac-181f-5ad5f5656317', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Calls', 'module', 90, 0),
('4a75516f-2c7b-39e3-adda-5ad5f5951cb5', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Tasks', 'module', 90, 0),
('4af31cbd-36c0-a2ad-f316-5ad5f594aaa4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Calls', 'module', 90, 0),
('4b0fcf8a-4b18-9f3f-59f0-5ad5f5ff7df5', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('4bb89d2b-148e-9c47-d19b-5ad5f534e627', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Tasks', 'module', 90, 0),
('4c28446d-cc3f-4e7a-ca17-5ad5f5ad0b00', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Calls', 'module', 90, 0),
('4c4bb649-6485-c9f5-ea15-5ad5f5f349c7', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('4d0eeb42-2c53-03f6-cbc8-5ad5f5fb5125', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('4d6275f3-1b71-7736-6879-5ad5f5d98cfc', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Calls', 'module', 90, 0),
('4e260395-416e-c0de-91ce-5ad5f5b5fe3f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('4e4e6dd6-573c-3e4b-54e2-5ad5f50934d2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('4e938331-6c74-520b-7994-5ad5f5f4f0af', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Calls', 'module', 90, 0),
('4f5c2fc8-f100-845d-f614-5ad5f52ab503', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('4f8b9bcf-9b4b-5d1c-514b-5ad5f5005722', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Tasks', 'module', 90, 0),
('4fc12d84-44df-e2f1-094f-5ad5f5192532', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Calls', 'module', 90, 0),
('508f5bb8-a750-fb2b-cde7-5ad5f5e4e5f6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('50c60285-f930-cfb7-f691-5ad5f59591ce', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Tasks', 'module', 90, 0),
('50ebb545-963e-6ea7-08ba-5ad5f5690fc7', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('5100ff1d-9dc6-7323-12ce-5ad5f57674e0', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Prospects', 'module', 89, 0),
('51c627fb-94a8-c8ee-e66d-5ad5f50cdc37', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('5242df0f-8805-a05b-f333-5ad5f51a5ea0', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Prospects', 'module', 90, 0),
('52476546-a02e-95d3-8166-5ad5f525b9f9', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('52f8e651-a249-196f-650e-5ad5f57def9e', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('5376061e-32c8-4efc-16e9-5ad5f5ec98ab', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Prospects', 'module', 90, 0),
('54a84759-101a-cf83-5894-5ad5f5a61b09', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('5569fda3-e673-14c9-e36a-5ad5f5fc970a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Alerts', 'module', 89, 0),
('55e40558-3b03-8323-c2d7-5ad5f5628bb6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('56aac6df-f8b7-575d-5c66-5ad5f5f311a0', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Alerts', 'module', 90, 0),
('572344aa-5f23-b9d9-d620-5ad5f5385577', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Prospects', 'module', 90, 0),
('57ddf7af-0cf8-047e-6183-5ad5f5d7f61a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Alerts', 'module', 90, 0),
('584dbb9c-5a57-2098-9cf3-5ad5f55894c8', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Prospects', 'module', 90, 0),
('59153340-06b8-8221-802e-5ad5f5fca4f3', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('59270cff-6b8b-51b4-b307-5ad5f5f79810', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('59889efb-1a45-dea9-d7da-5ad5f525f297', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('5a6437cc-00e5-cf35-f3fa-5ad5f547e1e1', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('5b8f0da4-e84f-9048-f2b1-5ad5f506fc51', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Alerts', 'module', 90, 0),
('5f5c9941-8bcf-53fd-6016-5ad5f52dd87e', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('5f93bee5-4daa-f670-1649-5ad5f54d1020', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'FP_events', 'module', 89, 0),
('5ff44283-422e-52b8-4574-5ad5f5a01ded', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('602f0362-3190-d389-a1c8-5ad5f5d3c724', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('609307b2-700f-4155-b457-5ad5f5e4cbb2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('60e5f42d-fa98-9918-e77e-5ad5f52d4e49', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'FP_events', 'module', 90, 0),
('611762d7-8a47-6808-2a0f-5ad5f54f3861', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('61611a79-0551-e9b6-79d5-5ad5f549b475', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('61660641-6724-8996-79f0-5ad5f59af50d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Alerts', 'module', 90, 0),
('6187a0ae-5ca3-1cb1-f8e4-5ad5f5555bdb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('61bfb1dc-94f1-d22c-df3e-5ad5f54eb1e1', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('621c9d1c-0611-0734-96d8-5ad5f52db935', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'FP_events', 'module', 90, 0),
('621f052b-5454-f8f0-02ed-5ad5f58bc838', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('62a58ccb-c15d-3aa2-9d95-5ad5f5725fbb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('62c8ee4c-3e29-34e6-a09d-5ad5f5b989cb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('62f4c473-a100-f2b9-831f-5ad5f541ca54', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('6304ad30-2bf9-c635-330f-5ad5f550acfb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('6355d491-bd2c-fed6-9ef3-5ad5f57ea1ad', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('635c2470-3e4a-6863-46ee-5ad5f52370fe', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('6373a473-ffc6-f73b-36d7-5ad5f50c3431', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('641d8eb1-d115-1515-ce61-5ad5f56e98fe', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('644383d6-00d2-81e5-5b0b-5ad5f53cac7d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('648b0fe1-1657-3dff-59cc-5ad5f51c2ed6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('64a0aaa5-9f60-9fc1-c231-5ad5f54a6956', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('64a4d6a0-e173-f8a6-676b-5ad5f583dd45', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('64c7aa48-d3a4-ccb8-6521-5ad5f5273a95', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('65479024-4e80-73c0-1ff1-5ad5f520c345', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('658328e0-7228-9756-6216-5ad5f5aa4d1e', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('65c4d67f-c0c3-d781-613f-5ad5f5edfa73', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'FP_events', 'module', 90, 0),
('65c5e5b1-d1e3-24d4-3f70-5ad5f5990749', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('65ec0324-c096-3c69-3af1-5ad5f5beb210', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('6608829b-a7c9-69d9-a687-5ad5f541d4fd', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('66794309-e6cd-3eb3-d6c4-5ad5f55f45fc', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('66c17c26-f760-e5f7-bc7a-5ad5f5882c90', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('66f4e311-bc6b-6213-40d1-5ad5f5b24316', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'FP_events', 'module', 90, 0),
('66fd2600-537e-e4ea-4572-5ad5f502c322', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('6722860c-0651-9e84-e48c-5ad5f5705c4b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('67471180-968c-f606-e690-5ad5f5663c6c', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('680170bc-78aa-de18-d985-5ad5f5a4932b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('682e01de-5bbe-1f51-a473-5ad5f5cbbbdd', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('6840f9a7-f4fb-bb41-ea0e-5ad5f5cf8849', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('68490ea5-4e41-0a38-3df8-5ad5f565b6e4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('6852cb0d-6383-9240-86e4-5ad5f547b0be', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('68883132-7825-faaf-2a1a-5ad5f5519bfa', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('68e363b7-9f8e-21f5-4b4e-5ad5f58545c1', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Project', 'module', 89, 0),
('69440f95-aa35-c6b3-6f41-5ad5f5b2b256', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('6967b5b9-4e51-3bea-2155-5ad5f5ecb70a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('698f0bc1-4355-bd55-e76d-5ad5f5bd45a7', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('69cde9cb-5b36-e22d-bdab-5ad5f57f1016', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('6a365cbf-c28f-469e-48e9-5ad5f530de39', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Project', 'module', 90, 0),
('6a95efaa-a2f2-c8ea-c330-5ad5f537aaeb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('6b27dcc7-9ae6-8f97-08b7-5ad5f530ce52', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('6b6247e9-ef27-1c81-9a2b-5ad5f5bbcf6e', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Project', 'module', 90, 0),
('6c8cd128-f38f-abd9-9683-5ad5f5c63298', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Project', 'module', 90, 0),
('6cfb3b01-d737-52c2-db51-5ad5f530884f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('6db440b5-c635-1860-348a-5ad5f558bd48', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Project', 'module', 90, 0),
('6dc10c06-d1ed-70e0-c318-5ad5f5a1a6a2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('6e3b1924-3e2a-2294-74a8-5ad5f5169134', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('6ee5c818-c7bd-d4a1-0905-5ad5f5fc6e37', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Project', 'module', 90, 0),
('6f650857-eafc-3d3d-c17f-5ad5f5d506af', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('6fba256f-0a86-b892-e897-5ad5f55c9a50', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'SurveyQuestionOptions', 'module', 89, 0),
('7012822c-89c6-0f91-7435-5ad5f51aa789', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Project', 'module', 90, 0),
('70b4b10b-ee7e-75a3-2582-5ad5f5781518', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('713c2651-49bf-9f85-68f3-5ad5f5f94e6d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('71e76942-92f9-bd36-9439-5ad5f5d1958b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('71f0f834-cd5c-c652-f848-5ad5f588a30f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'SurveyQuestionOptions', 'module', 90, 0),
('735c4dc6-539d-2f64-fcca-5ad5f59698ed', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('739f930a-92f2-75bf-99a5-5ad5f5f8bd00', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'SurveyQuestionOptions', 'module', 90, 0),
('7484a729-ce83-63a2-d1ba-5ad5f52942f4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('75254cb7-f805-cbd7-afa3-5ad5f554b2ff', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'SurveyQuestionOptions', 'module', 90, 0),
('75b60495-3af8-2298-d067-5ad5f5b970f6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('76712c5d-9389-f961-48d1-5ad5f5b284b3', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'SurveyQuestionOptions', 'module', 90, 0),
('77d6dac6-7535-9bbd-d975-5ad5f5eceabc', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'SurveyQuestionOptions', 'module', 90, 0),
('7936440f-c73e-9a7a-229f-5ad5f5846d0e', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'SurveyQuestionOptions', 'module', 90, 0),
('7a79d0f0-b2b4-bbe2-4dbd-5ad5f5ae7c29', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'SurveyQuestionOptions', 'module', 90, 0),
('7b2bbfac-66da-070a-6493-5ad5f5f37d60', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('7c8b4c18-a47c-d07f-c1b6-5ad5f58590f4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('7dca6364-2b8f-44b5-01a4-5ad5f56cb7b0', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('7f05e10d-04cb-589b-2d9e-5ad5f59e9001', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('80449df1-2c77-f9f6-128f-5ad5f5e2505d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('816f1e22-9196-1720-1fd7-5ad5f53d2dfb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('817230ca-598d-4d13-f42c-5ad5f5b1b752', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('82a2aaaf-f00a-b0f2-445e-5ad5f52ca880', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('82a3e147-9775-b479-8011-5ad5f5f9e671', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('82f68b6b-1558-da9e-947c-5ad5f54396a7', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('83c79da0-2f40-b1f3-ee67-5ad5f5818e2b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('83d93012-713a-450b-b241-5ad5f5302b20', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('843ff7bf-1d41-9dc1-1e4a-5ad5f5e3fa33', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('84983885-6701-ff32-7245-5ad5f58a792d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('84f1421e-cb39-88ee-9336-5ad5f55a29aa', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('85752aad-6e56-8b2b-da57-5ad5f5461aac', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('85db4a03-f44c-8daf-0c1c-5ad5f51ab470', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('85eb801a-bfa8-88e7-724a-5ad5f55de6d3', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('861567fd-8269-e306-945d-5ad5f503ddaf', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('8650d257-4c07-7e4f-65d8-5ad5f567da35', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Spots', 'module', 89, 0),
('86b21ba1-66a3-798f-80ab-5ad5f53df615', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('871050de-0264-4897-a540-5ad5f5097cca', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('8740304d-3b04-b673-6f1f-5ad5f5012daa', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('87540dfd-4d51-d456-bdc5-5ad5f5a248bd', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('8760d31f-b158-ea6d-9668-5ad5f5ac0ecb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('87e4b249-ce04-4e2e-efb4-5ad5f59523f0', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('87faa85d-3d2b-dab1-7d2b-5ad5f576c765', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Spots', 'module', 90, 0),
('88531298-9d94-85d5-73f1-5ad5f50966bf', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('88689c23-71d0-ea35-e93e-5ad5f59cc731', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('88bfb40c-987f-c43b-8e04-5ad5f5af88d4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('890fbebb-14bb-dc69-67e6-5ad5f5c87710', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('893903c0-066a-a13d-66f9-5ad5f54eeb68', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Spots', 'module', 90, 0),
('898a3197-9bfd-7600-4d66-5ad5f5dc6cf1', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('899950ce-e708-9132-fe2c-5ad5f5ea55dd', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('8a2456dd-ae4e-b36c-8da1-5ad5f5d41a2a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('8a394eef-de03-a31c-5211-5ad5f52b7b3a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('8a74f677-3b9e-0748-b321-5ad5f534f930', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Spots', 'module', 90, 0),
('8ace3696-a32e-41fc-a51a-5ad5f5e015da', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('8b6cb279-b215-5eee-64ae-5ad5f571dc9d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('8b737c7c-4a18-bd3a-f5b9-5ad5f59780ce', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('8bb23d28-76d3-6f7b-c041-5ad5f56342cf', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Spots', 'module', 90, 0),
('8c08066e-c61f-1c5b-7b63-5ad5f5f9391c', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('8cc1d84f-f4cc-43b1-0825-5ad5f5104acc', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('8ce91219-cda2-0f76-359c-5ad5f5b0230a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Spots', 'module', 90, 0),
('8d631078-bdd7-0f30-c853-5ad5f547b839', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('8e1bdb08-4638-3d92-bd16-5ad5f528cbfe', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Spots', 'module', 90, 0),
('8f5be7aa-63c3-4a2e-f147-5ad5f56ae101', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('8ffa5582-9798-3486-91c5-5ad5f5a10bca', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('9037d146-a69b-50a8-49bc-5ad5f5b841d0', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('91477e95-559b-3727-2f3a-5ad5f5cbd62c', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('9210ac01-31a4-1ba2-a746-5ad5f5d21c44', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('926f31c6-b2ef-8504-216f-5ad5f52d1c63', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Documents', 'module', 89, 0),
('93ade495-822f-96bf-112b-5ad5f58a6579', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'SurveyResponses', 'module', 89, 0),
('93af8bef-7ae8-96bf-8009-5ad5f5b73e87', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Documents', 'module', 90, 0),
('942c0e4c-599b-1549-1757-5ad5f5cb5916', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('94e07362-a283-3b68-8a67-5ad5f594bc5f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Documents', 'module', 90, 0),
('94fe5d3d-d6db-d4bd-b7e9-5ad5f5c64a94', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'SurveyResponses', 'module', 90, 0),
('961b9dde-60c7-56d1-f5f3-5ad5f541915d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Documents', 'module', 90, 0),
('9639f77c-7c99-eae4-48f8-5ad5f5452463', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'SurveyResponses', 'module', 90, 0),
('97534ea3-bcdb-dbce-ea57-5ad5f55231f4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Documents', 'module', 90, 0),
('977d7a13-6bcf-94b3-63e9-5ad5f52239e6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'SurveyResponses', 'module', 90, 0),
('987ec0ff-c3e7-b536-6375-5ad5f5d289fe', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Documents', 'module', 90, 0),
('98b55eff-50e7-3f15-a886-5ad5f5cf9fb9', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'SurveyResponses', 'module', 90, 0),
('99c57d74-6cfe-3893-8ad2-5ad5f5cc6fe9', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Documents', 'module', 90, 0),
('9a118ab1-5fd6-e896-a55f-5ad5f538b430', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'SurveyResponses', 'module', 90, 0),
('9b08f696-8df3-b72b-a55f-5ad5f54ffcbb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('9b6ec1e8-6a72-7624-fd53-5ad5f53974cc', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'SurveyResponses', 'module', 90, 0),
('9c42943e-7d7d-b3ea-93c9-5ad5f53fbbe7', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('9c8f5fcb-31ce-a551-d722-5ad5f538e4d4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('9cad15e3-d572-4a72-5274-5ad5f56ddeda', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'SurveyResponses', 'module', 90, 0),
('9cedfcae-2ca7-8d43-290d-5ad5f5fb1c80', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Emails', 'module', 89, 0),
('9cf850a8-ea69-c338-ce48-5ad5f5b94675', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('9d1c84d4-4bf3-9901-5318-5ad5f576aed8', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('9d7e7635-959b-fa5b-9412-5ad5f58cabe2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Leads', 'module', 89, 0),
('9d847211-9556-3334-0e6e-5ad5f5b63cf4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('9d95f4fe-a292-d875-757a-5ad5f5692467', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('9de20d00-2d7e-11e6-cc32-5ad5f5a1a3c8', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('9e32254a-95b0-acc2-01e4-5ad5f5aa0062', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('9e41f843-61d1-5e22-86c4-5ad5f514d29c', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Emails', 'module', 90, 0),
('9e5d2f39-2a82-5e21-71e7-5ad5f565b500', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('9eb02450-5df5-2f80-91a7-5ad5f572c9f5', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('9ee4b7c0-cd90-27e9-394c-5ad5f557e46d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('9f396a09-fcce-04ef-abb8-5ad5f51a2252', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('9f5b442d-ccdb-f99c-94b1-5ad5f5d11e2f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('9f754dee-a662-347b-4950-5ad5f56d803d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Emails', 'module', 90, 0),
('9f8c3a1b-8310-e370-24b6-5ad5f583a8a0', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('9fe0d318-f44e-b008-e834-5ad5f5052191', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('a00813c9-5fe9-7257-4eed-5ad5f5f61e32', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('a05c0b62-8f64-c5db-1b82-5ad5f5f0c120', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Leads', 'module', 90, 0),
('a06d15b9-10f3-ef74-99cd-5ad5f59b697c', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('a0824670-c5d1-4b18-34fc-5ad5f501bede', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('a0a615ad-0847-07fc-5606-5ad5f566f047', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Emails', 'module', 90, 0),
('a0bf820e-5036-eeba-0b88-5ad5f55db092', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('a110c8e4-9702-bf52-d751-5ad5f576eb4a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('a12b9136-f0d4-6c1a-9887-5ad5f5a2a227', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('a1a7cf36-cd5f-46fe-576a-5ad5f52d268a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('a1abd7dc-910e-ef42-eefa-5ad5f5643030', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('a1d9dd74-3cd1-9c7f-34f9-5ad5f5a1087e', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Emails', 'module', 90, 0),
('a1e4bc15-b935-5079-ad7f-5ad5f59728c6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Leads', 'module', 90, 0),
('a1eac2d2-248d-b927-8c79-5ad5f564fd8d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('a23719c6-de69-1e33-e873-5ad5f5ba2c40', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('a2566454-382d-f003-0102-5ad5f5513a21', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('a2d94ce6-062c-9f21-a0c3-5ad5f565f929', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('a2db0c10-890a-4886-6ac1-5ad5f5c8cc21', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('a311c757-5a51-0815-c916-5ad5f55db1f3', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Leads', 'module', 90, 0),
('a3135613-0cdc-fc04-ab71-5ad5f58380f5', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Emails', 'module', 90, 0),
('a31f0b9b-222e-3572-0b3f-5ad5f52917b5', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('a3811290-1f56-cdd0-e8b0-5ad5f514af6b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('a415514f-879a-3151-1c22-5ad5f5471c8b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('a4197e7a-4da5-0df9-6706-5ad5f5828bf8', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('a43c34df-7849-7527-6fe8-5ad5f58d99e5', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Leads', 'module', 90, 0),
('a44cdf87-42ec-f4c7-ff52-5ad5f5421158', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Emails', 'module', 90, 0),
('a4543182-1e99-6bf7-f42a-5ad5f513bb56', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('a4a29409-38f1-d2a5-a867-5ad5f5d89e40', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('a540701f-96a4-07f2-dede-5ad5f57bb550', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('a563aaac-437a-d681-55b8-5ad5f5dd3a78', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Leads', 'module', 90, 0),
('a57d4cb9-ed52-13c4-57ac-5ad5f5489a06', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('a58b236f-1076-4b2e-16f3-5ad5f59811f1', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('a5ca382a-ac51-244e-71e0-5ad5f5115570', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('a68b8245-ad50-2cea-e19f-5ad5f56f3400', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Leads', 'module', 90, 0),
('a7c698f6-58e2-41bf-73f8-5ad5f5eecd5a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('a91904b7-0a43-a79d-d142-5ad5f55c2517', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('a93b464d-3992-2cf7-f48f-5ad5f5a2a92d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('a975ef2b-5006-5909-7eb0-5ad5f59d6507', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Contacts', 'module', 89, 0),
('aa79dd7a-1033-8684-2f8d-5ad5f51cbf00', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('aaad239d-27a5-65bf-83ef-5ad5f5b07cd6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Contacts', 'module', 90, 0),
('ab4e6096-b054-49c9-dada-5ad5f5f65b09', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('abd49c05-832c-d61c-0fca-5ad5f56ddc59', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('abd7e46e-4514-6090-96db-5ad5f5583528', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Contacts', 'module', 90, 0),
('ac9492fd-d9aa-87b1-e2cf-5ad5f59d2a5b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('ad088d73-7af7-3937-eea7-5ad5f57fdd7b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('ad289ffa-9e90-5b33-78a0-5ad5f53117fc', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('adda8d02-543c-493c-85d8-5ad5f5813dfb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('ae4f2add-0a6c-6f09-8473-5ad5f5445e5f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('ae73e3d5-8b6a-8497-6998-5ad5f5a456d6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('af27cf02-1f60-51cc-e1c1-5ad5f515e410', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('af77fb31-6a69-ee09-50ed-5ad5f5320695', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Contacts', 'module', 90, 0),
('afcd054a-62cd-52b5-2ef3-5ad5f53258f2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('b074d10c-c595-e5f8-a863-5ad5f5777d83', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('b09d1a0e-bbb1-2675-14c6-5ad5f5bdb1be', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Contacts', 'module', 90, 0),
('b12b9002-13f3-bf9d-4f77-5ad5f5ba4a03', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('b1bd87f9-807e-1188-7a3a-5ad5f5b9af04', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('b1c1f2f0-7da7-adf4-a2bb-5ad5f56266e7', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('b2725c83-7376-fec9-3d73-5ad5f58e0077', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('b300269f-abe4-16ad-97f6-5ad5f554366c', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('b37f0c8d-0a80-bdbf-54fe-5ad5f55a87f9', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Accounts', 'module', 89, 0),
('b3b11f82-3a09-d88e-8e75-5ad5f5e6214d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('b7bea87e-174c-ec8a-d9af-5ad5f5c60c3d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Surveys', 'module', 89, 0),
('b917e684-48b7-9bfa-7b30-5ad5f5338feb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Surveys', 'module', 90, 0),
('ba5f411c-c240-c4f7-1542-5ad5f53d545d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Surveys', 'module', 90, 0),
('bad022c3-795c-816a-46c9-5ad5f50a5ede', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Cases', 'module', 89, 0),
('bbc6c261-b3b3-4159-eca9-5ad5f538e9ea', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Surveys', 'module', 90, 0),
('bc07bf3d-3064-96fb-9b3d-5ad5f5b49ece', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Cases', 'module', 90, 0),
('bd0a4d48-c6c2-3369-ae8c-5ad5f5e6fc69', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Surveys', 'module', 90, 0),
('bd45c004-e111-fc66-5a28-5ad5f50cef0a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Cases', 'module', 90, 0),
('be170885-c535-c525-c1bd-5ad5f5c78225', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('be541bdf-41a0-6602-dc74-5ad5f5bf768d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Surveys', 'module', 90, 0),
('be83455e-78c8-47c5-1014-5ad5f59fa03c', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Cases', 'module', 90, 0),
('be95b721-158e-ed39-1636-5ad5f5f024ff', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('bf9303ec-12cf-0ab6-3350-5ad5f538cbe8', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Surveys', 'module', 90, 0),
('bfbc5f2a-7056-49ad-2321-5ad5f5d864fc', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Cases', 'module', 90, 0),
('bfc3d751-c5f9-4380-f608-5ad5f50834c6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('c0dd18d8-24e5-44e5-7f7f-5ad5f52e8281', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Surveys', 'module', 90, 0),
('c0edfb05-c04e-bd2c-b4ea-5ad5f5ca724b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Cases', 'module', 90, 0),
('c0f1ddd0-d1a7-7076-e073-5ad5f53d4400', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Campaigns', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('c2198eee-2d5b-8ce3-c555-5ad5f5bc0de1', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('c227d941-f5e6-07cf-71ea-5ad5f58c0409', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Cases', 'module', 90, 0),
('c34025d8-e371-7d0d-5e3e-5ad5f50d76f3', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('c35d8c9b-337b-ef44-61d2-5ad5f5c74554', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('c4390992-230d-c965-c08e-5ad5f5b1ad96', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'EAPM', 'module', 89, 0),
('c4780ab2-185e-4630-4943-5ad5f529acf9', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('c56f8f1c-16d1-d8b9-a1ef-5ad5f580b1bc', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'EAPM', 'module', 90, 0),
('c59f2a12-0df3-c4e6-8080-5ad5f5dadf21', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('c695c2b2-fbf6-cd05-f4f0-5ad5f5e5507d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'EAPM', 'module', 90, 0),
('c6c6a721-fff6-27f3-5723-5ad5f53d6659', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('c7bd2eb2-b86b-8c28-5b6f-5ad5f50487a6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('c86b029c-eef2-9854-b95b-5ad5f57176ae', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Accounts', 'module', 90, 0),
('c8ebff88-231f-3ad1-7e2d-5ad5f5ce6868', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('ca190ce6-d5b7-71c7-61d3-5ad5f5fed025', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'EAPM', 'module', 90, 0),
('cb441dfd-c95e-19d8-8cba-5ad5f5f40cf3', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'EAPM', 'module', 90, 0),
('cc787465-502f-c9eb-1c85-5ad5f5ee0c52', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('cef1cf55-e972-3b1d-a2fc-5ad5f5c55b03', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('d03977c0-2d27-a44e-f053-5ad5f5d7a744', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('d17d1d82-44cf-aa71-95ca-5ad5f551d948', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('d2bfed3e-39f2-1af6-8d50-5ad5f55730f6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('d31607f7-957f-750a-07e9-5ad5f5628e67', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('d42f9a25-f845-ac03-8010-5ad5f5d8cab1', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('d564da91-234b-dd0f-aebc-5ad5f57dc273', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('d68652b2-bcb2-7e89-e75e-5ad5f5c82f93', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Bugs', 'module', 89, 0),
('d6a5f6fc-7ec4-58fa-2a89-5ad5f5915980', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('d7c6cc1c-0f13-eb0d-d0ff-5ad5f5c6c463', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Bugs', 'module', 90, 0),
('d889f71c-f093-7ef2-b08f-5ad5f5916800', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('d902cf17-fcba-42f2-3cfb-5ad5f5748491', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Bugs', 'module', 90, 0),
('d981902f-7f01-ebf1-9c59-5ad5f5cac38a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('da33f36a-a0ac-ee9a-2f28-5ad5f5e10c66', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('daad2ad5-26be-7823-a098-5ad5f5b18834', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('dacf174e-67ab-3116-0fbd-5ad5f5d096be', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('db3f0ac4-416b-0a49-7b05-5ad5f50130ee', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Accounts', 'module', 90, 0),
('db6ce4eb-9bdc-33cc-3415-5ad5f5c54fcd', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('dc0eb8bb-eeed-dca3-a2b8-5ad5f57685f7', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('dc1b5e88-2c98-9ca9-6f91-5ad5f574ff00', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('dc9e55a4-5660-0801-4b78-5ad5f52047d2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Bugs', 'module', 90, 0),
('dd353be6-3a38-4904-41ed-5ad5f58b9867', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('dd4dce82-8205-1ca2-924e-5ad5f5118a96', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('ddc7ed6e-6812-8bf7-3150-5ad5f5c140a6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Bugs', 'module', 90, 0),
('de7c7427-1b0d-2886-a88c-5ad5f507e9ed', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('de7e69a1-557f-5f26-173e-5ad5f5ec6919', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('df135cd3-16f7-67ac-22c5-5ad5f5381b1e', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('dfac5ec6-7d59-37f8-3d78-5ad5f52c53c9', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('dfc369af-062e-ffb1-ac45-5ad5f5d0d1b4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('e0e1cb1a-7e15-d072-cea9-5ad5f58874a7', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('e12993c8-e243-92cf-2db2-5ad5f51f988b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('e2106f87-0873-9db0-08fa-5ad5f54915ae', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('e261a65d-56fa-f68c-6cff-5ad5f5251ad6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('e3478c50-7f0a-1a51-18e1-5ad5f57ebb51', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('e6354583-53dc-bf43-20ed-5ad5f5dd8205', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Notes', 'module', 89, 0),
('e66c0046-bf4e-21ef-f96c-5ad5f54334e9', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('e77eb75c-3e30-a45d-135a-5ad5f59e1afd', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Notes', 'module', 90, 0),
('e7c603bd-2d1c-07a3-2ff0-5ad5f5c9da4c', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Meetings', 'module', 89, 0),
('e8b39c27-1a9f-83b4-a8da-5ad5f5c3df3d', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Notes', 'module', 90, 0),
('e901469c-c980-dd30-a9c5-5ad5f572d9c4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Meetings', 'module', 90, 0),
('e9697218-a74b-80f5-2874-5ad5f5893266', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'SurveyQuestionResponses', 'module', 89, 0),
('e9e4fbd3-11a6-3e5a-7582-5ad5f50b0e0a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Notes', 'module', 90, 0),
('ea2ab0b3-3175-aae6-3adc-5ad5f56f5df2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Meetings', 'module', 90, 0),
('eabb023d-8364-0bf7-91ed-5ad5f5f3665c', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'SurveyQuestionResponses', 'module', 90, 0),
('eb2e7412-c500-afc1-cc4e-5ad5f53029cd', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Notes', 'module', 90, 0),
('eb52e684-28e4-3cf6-e77a-5ad5f506d4c4', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('ec021975-c38c-2ff0-2daf-5ad5f5a18eeb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'SurveyQuestionResponses', 'module', 90, 0),
('ec69810d-2dd9-124c-c7e6-5ad5f5f52b44', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Notes', 'module', 90, 0),
('ec800791-f2d6-20d1-c474-5ad5f5c39dc2', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('ecd4314c-754d-9f2a-6a3a-5ad5f56ff4df', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'Users', 'module', 89, 0),
('ed77a2d6-4e5c-2017-9467-5ad5f5c056d6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'SurveyQuestionResponses', 'module', 90, 0),
('eda0ebad-cf3d-04b8-d332-5ad5f5f46c48', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Notes', 'module', 90, 0),
('eda6f1dc-5dd2-cea2-91d1-5ad5f5974889', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Meetings', 'module', 90, 0),
('ee1fe7d5-ccf0-ffac-ce82-5ad5f5a5c99a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'Users', 'module', 90, 0),
('eed20ebf-024e-948a-f96f-5ad5f5199499', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'Meetings', 'module', 90, 0),
('eedc79b3-a1bb-4645-d167-5ad5f52e84ce', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('ef1602a1-c22a-54ca-7818-5ad5f58a6cac', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('ef58ac59-fe8d-b112-faf6-5ad5f584393e', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'Users', 'module', 90, 0),
('ef6a0c82-5df7-4902-ca7f-5ad5f598ac7b', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'SurveyQuestionResponses', 'module', 90, 0),
('ef79b405-384e-d5dc-db68-5ad5f54490b8', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('eff8da1a-7b18-a8ef-540e-5ad5f5aec264', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('f08226d0-f3f8-7027-a4a3-5ad5f532f27a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'Users', 'module', 90, 0),
('f0b1d32d-b1bb-0697-9db3-5ad5f58c1312', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'SurveyQuestionResponses', 'module', 90, 0),
('f0b579f0-5fc0-dcd3-315e-5ad5f570fd59', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('f1c385fd-51af-e0ab-d345-5ad5f5fd2aeb', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'Users', 'module', 90, 0),
('f1e82c7e-b696-6b1c-4dd0-5ad5f54b4441', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('f1f8d672-b457-db89-530a-5ad5f56ea5b6', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'export', 'SurveyQuestionResponses', 'module', 90, 0),
('f29438bc-e851-621d-78ac-5ad5f5390a56', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('f312d6c5-8404-0e11-a95f-5ad5f5acb75f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'import', 'Users', 'module', 90, 0),
('f31f8297-df50-61e7-2355-5ad5f5a08971', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('f34b6287-744b-6ddc-6ec4-5ad5f5fc082f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'massupdate', 'SurveyQuestionResponses', 'module', 90, 0),
('f3e8c699-a4f6-d6da-8f0d-5ad5f59a5310', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('f9dc09e4-a9ca-bbbd-63ec-5ad5f5dd00a9', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'delete', 'AOD_Index', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT '0',
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.25'),
('MySettings', 'tab', 'YTozODp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjU6IlNwb3RzIjtpOjEwO3M6OToiQ2FtcGFpZ25zIjtpOjExO3M6NToiQ2FsbHMiO2k6MTI7czo4OiJNZWV0aW5ncyI7aToxMztzOjU6IlRhc2tzIjtpOjE0O3M6NToiTm90ZXMiO2k6MTU7czoxMjoiQU9TX0ludm9pY2VzIjtpOjE2O3M6MTM6IkFPU19Db250cmFjdHMiO2k6MTc7czo1OiJDYXNlcyI7aToxODtzOjk6IlByb3NwZWN0cyI7aToxOTtzOjEzOiJQcm9zcGVjdExpc3RzIjtpOjIwO3M6NzoiUHJvamVjdCI7aToyMTtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtpOjIyO3M6MTY6IkFNX1Rhc2tUZW1wbGF0ZXMiO2k6MjM7czo5OiJGUF9ldmVudHMiO2k6MjQ7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtpOjI1O3M6MTI6IkFPU19Qcm9kdWN0cyI7aToyNjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtpOjI3O3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjI4O3M6OToiamp3Z19NYXBzIjtpOjI5O3M6MTI6Impqd2dfTWFya2VycyI7aTozMDtzOjEwOiJqandnX0FyZWFzIjtpOjMxO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7aTozMjtzOjExOiJBT1JfUmVwb3J0cyI7aTozMztzOjEyOiJBT1dfV29ya0Zsb3ciO2k6MzQ7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO2k6MzU7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO2k6MzY7czoxNDoiRW1haWxUZW1wbGF0ZXMiO2k6Mzc7czo3OiJTdXJ2ZXlzIjt9'),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Leads', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'Layershift SuiteCRM'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `confirm_opt_in`, `confirm_opt_in_date`, `confirm_opt_in_sent_date`, `confirm_opt_in_fail_date`, `confirm_opt_in_token`, `date_created`, `date_modified`, `deleted`) VALUES
('6aebd213-d6e7-291e-0e77-5ad5f52961e6', 'bart@layershift.me', 'BART@LAYERSHIFT.ME', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2018-04-17 13:23:34', '2018-04-17 13:23:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses_audit`
--

CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('6adf6017-9869-5225-9c1f-5ad5f5bdfc2d', '6aebd213-d6e7-291e-0e77-5ad5f52961e6', '1', 'Users', 1, 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `body_html` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('141c6f3b-1965-ffdd-8628-5ad5f5f1ee86', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'off', 'Confirmed Opt In', 'Email template to send to a contact to confirm they have opted in.', 'Confirm Opt In', 'Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address', '<p>Hi $contact_first_name $contact_last_name,</p>\n             <p>\n                Please confirm that you have opted in by selecting the following link:\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\n             </p>', 0, NULL, NULL, 'system'),
('1b650fd5-cc71-a2b6-afa8-5ad5f588572f', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, 'system'),
('4e730abb-9d9e-11d9-2eeb-5ad5f5d80b99', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'off', 'User Case Update', 'Email template to send to a Sugar user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\n					     <p> </p>\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>', 0, NULL, NULL, 'system'),
('cd942839-07c9-faa0-92bb-5ad5f55f4f98', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, 'system'),
('cdad0027-b07b-cb8a-3872-5ad5f5d9a5e4', '2013-05-24 14:31:45', '2018-04-17 13:23:34', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\n$fp_events_description\nYours Sincerely,\n', '\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n', 0, NULL, NULL, 'system'),
('d050124b-26c3-523a-0f64-5ad5f582b17a', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, 'system'),
('d2eb8fba-cbc1-8d5c-cf45-5ad5f5b4ae51', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'off', 'Two Factor Authentication email', 'This template is used to send a user a code for Two Factor Authentication.', 'Two Factor Authentication Code', 'Two Factor Authentication code is $code.', '<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, 'system'),
('ecfe0e90-654f-7e06-63a9-5ad5f55590d3', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>', 0, NULL, NULL, 'system'),
('efc970dd-3f15-986f-47f6-5ad5f5bd30bf', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, 'system'),
('f2d0d8ce-983d-5ee4-8a5f-5ad5f5aa7141', '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>', 0, NULL, NULL, 'system');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2018-04-17 13:23:34', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2clients`
--

CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT '1',
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2tokens`
--

CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `smtp_from_name`, `smtp_from_addr`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('a0ebf09d-0d6a-1889-659d-5ad5f5b4a3a9', 'system', 'system', '1', NULL, NULL, 'SMTP', 'other', 'localhost', 25, '', '', 0, '0', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('1f6436d0-95a9-53e0-821e-5ad5f5c2bd2a', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f8921be-dd72-1335-8ce1-5ad5f5496bdc', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1fa276dd-72c4-5b3c-e89f-5ad5f5f415f3', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1fc14893-9a7c-0309-3737-5ad5f5806cb4', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('1fd903e7-e3bf-feb3-898f-5ad5f5957ac8', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('1ffba051-d0fe-241f-f3dd-5ad5f5ecbc84', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('202cc1c9-7253-8934-38a9-5ad5f5c199c2', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20515b1d-6996-edd0-3da5-5ad5f5d15df9', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2074840c-7b6a-d292-0551-5ad5f5eecefc', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('208d2666-83ec-f4ef-58b0-5ad5f5d7baa9', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('20a4eecc-7a30-b017-9dc0-5ad5f544afd0', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('20c98116-dd8c-6616-eec8-5ad5f595e8a5', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('20e89e1f-8087-3920-e5e0-5ad5f5324263', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('21bed136-c560-9672-a27b-5ad5f571fbf5', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21e79cc1-5b70-3d1c-0c9a-5ad5f5858304', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('220fed1c-ed50-d38f-5868-5ad5f5aded8c', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('222e922b-9f26-e9db-b763-5ad5f5d0f8ed', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('2247fc08-2f0f-27f9-622c-5ad5f5182f12', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('226be314-334a-0372-4bf7-5ad5f50eb8b4', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('2284c0bf-e10f-0b7c-c140-5ad5f5bde28f', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('22a45a67-d892-9900-394b-5ad5f5e01197', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('22bbe737-c4d0-a321-f533-5ad5f5df7204', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('22d3c4ac-ddcf-e76c-15d2-5ad5f5dc8740', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('238a044d-616c-305b-0643-5ad5f5ab3329', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23ae2746-5d8c-7308-f55d-5ad5f55600f4', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23c6e08b-3ad1-4636-becb-5ad5f51253ea', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23e46af5-c103-50f9-2c0f-5ad5f5871fcb', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('3049324d-5cfd-341b-e8dd-5ad5f5f002ff', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('3073b33e-77ca-ed77-e46d-5ad5f54d206d', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('3c8df5c3-fce9-bc45-afac-5ad5f5435407', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('48c29b00-0769-baaa-4340-5ad5f5b547a2', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('48ee2baf-b961-ee41-7bf6-5ad5f51a23b8', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('491078ce-d74d-626a-ea5a-5ad5f5809468', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('492a859b-3f19-a3d2-56bb-5ad5f5da56e5', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('498c08af-7c1c-cb1e-0740-5ad5f52f52a6', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49b2836b-86fc-5462-049b-5ad5f5aa2180', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('49dbf3b6-5201-2996-425c-5ad5f5e7ba25', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('4a0f7b50-3950-580e-3bca-5ad5f5549a9c', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a2b7117-d041-985d-ce1f-5ad5f56d59b4', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a4cfc8a-ecb8-12b2-b88a-5ad5f5edd57d', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a65e242-7dba-e5a2-ff0f-5ad5f59520ea', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a894a13-ac4a-f835-83e2-5ad5f5184124', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ac7af38-9f0f-ef23-8c2d-5ad5f5cf87be', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('4aeeeb5d-3313-635c-36d6-5ad5f59b6949', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('4b152bc6-4bac-e630-3a28-5ad5f5a016bb', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('4b355d31-4ee8-6022-cc27-5ad5f546f5c3', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('4b505034-470b-f67b-a1d7-5ad5f53f290b', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('4b6f0fae-f4de-b03f-5e20-5ad5f58d09f3', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('4b88305f-2eae-804b-8356-5ad5f56db555', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4baaa59a-9691-5f74-18e4-5ad5f5b7b263', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4bc6a9ff-bc1b-ebe1-1000-5ad5f53b0c54', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4bec1ebc-60c0-7a29-39ab-5ad5f5810c18', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c987dbe-b686-337f-e5a8-5ad5f503f0e0', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('4cbd6c2e-23c7-37b7-9108-5ad5f5a94394', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('4cd99642-4a3c-7c5a-e0c5-5ad5f5ca15ed', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('4cfd3b26-daff-ab73-f74a-5ad5f5303ea8', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('4d157aa1-b993-aa4c-6197-5ad5f5b19690', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('4d38195a-f6ec-c7b8-b893-5ad5f58ccfc2', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('4d516190-233a-d10e-efd6-5ad5f577b8ee', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d70d976-1b88-fecc-e99e-5ad5f5f57ca0', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54ec17f6-913a-b567-693e-5ad5f5c30143', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('554fa0ce-3253-6c21-7c71-5ad5f528e07d', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5579c974-4eca-58de-0c3d-5ad5f54d345f', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55987db5-99fe-b378-4ffd-5ad5f550f0fa', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55b5db57-a384-bf4a-0601-5ad5f537dfb9', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('55ce0ee2-65db-9497-257c-5ad5f587f5e4', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55ec2d6a-a1c6-6c52-4344-5ad5f5709f00', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56033753-5953-9506-cbe7-5ad5f531d3df', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('561be8d5-1d21-9fe0-374c-5ad5f523309e', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('563a0901-cc8a-4621-9cd6-5ad5f5e21955', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56510ead-8357-bf6c-0ca8-5ad5f597c09c', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('566d0bd8-460b-8540-6c9b-5ad5f5cc42a0', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('568353fb-216b-b712-7a0e-5ad5f51d5613', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('569a4a67-d6ad-06fa-f0f7-5ad5f540ee91', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56b5ac30-42e0-cb75-191e-5ad5f531cd4d', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56ccffc3-22b0-51e2-bd96-5ad5f585b6d0', 'surveyresponses_campaigns', 'Campaigns', 'campaigns', 'id', 'SurveyResponses', 'surveyresponses', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('570445bc-93ef-d32b-dd46-5ad5f550d89b', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5721a625-9004-3fc3-087e-5ad5f5799093', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('577ae3f3-af7e-473c-af70-5ad5f55668ac', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57adab7f-7ec9-8d83-ab42-5ad5f5a2a952', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57cda7f0-102e-58aa-5758-5ad5f57a0738', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57eaa946-2882-4d77-5f5f-5ad5f5a31cc4', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('5810357f-237a-2d31-69d0-5ad5f504a642', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('58314a84-dc9c-0f68-cb61-5ad5f5c7379a', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('584ca6c7-ce5e-5f12-3d9b-5ad5f5aae1bf', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('5869b5a7-08cc-301c-7523-5ad5f537b73a', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('58825365-3407-eba1-cede-5ad5f52c76a1', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('58a20af9-6bba-5c25-a4b3-5ad5f57b462d', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('58bcae48-f7e1-c805-99d8-5ad5f5fdf3c1', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('58de0762-313c-f44c-0c1b-5ad5f56526b5', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('59766fd5-75e5-ace6-a197-5ad5f56f1df8', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('599ff2fb-3806-93f9-458c-5ad5f5c98331', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59e3d7c1-84fc-cdf2-4a0c-5ad5f52bb408', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('5a0a9881-000a-089f-cdc5-5ad5f520e603', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a2c2cb9-58d7-e6f8-a9e4-5ad5f5237956', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a5792ac-4ac1-f781-52c6-5ad5f5fedb33', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ac91538-a3b7-3c45-cde7-5ad5f58ec20d', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ae889b0-7d0e-b818-1741-5ad5f582f8a8', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b003156-5331-0d9e-d67e-5ad5f5d8a137', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('612fd4cb-e4a4-2497-7f37-5ad5f508ff33', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('6163696f-8ed5-26a5-1f80-5ad5f576d7fa', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('618be5a5-2405-d2d1-d295-5ad5f5ef2ef8', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('61b24f65-c094-b730-f367-5ad5f5948ab0', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('61d4c9bc-fbf1-3450-e1d0-5ad5f5839c28', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('61f87415-affe-e9bb-63e0-5ad5f59463db', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6216cab5-d95a-e934-6637-5ad5f58eac7e', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('623ce190-f9a9-d5dc-c251-5ad5f5dee1e8', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('62622fe2-e061-9977-6d88-5ad5f5d31263', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('627ed69a-4570-1270-2c31-5ad5f54dd1aa', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('62a74dc6-a3d5-1d1a-1d0a-5ad5f5e1f49a', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62c4cd17-6572-fc7e-606c-5ad5f5584f81', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62ec19ea-77a8-bc28-16b3-5ad5f5f027f3', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('630ea458-a7af-a1cb-829e-5ad5f5e9c245', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('645c9e63-e8f8-40f9-f266-5ad5f564bfd5', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64817eb0-d9ec-a94f-d7f0-5ad5f590273d', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64a3d6c8-fb1d-d081-b252-5ad5f560c12f', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64bd7949-ac9f-aae7-6c2a-5ad5f58c8f3a', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('64db34d2-934d-beb5-f240-5ad5f55c7f72', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('64f649db-5505-7d3b-09c6-5ad5f54c4930', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('65145310-9bb3-c15a-b1a4-5ad5f572e87b', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('652c43b4-20b4-95cf-c9f7-5ad5f50234fa', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('654e4c96-9594-3810-1d2c-5ad5f5a75d93', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('65652fe3-ba2b-c83e-ee9b-5ad5f5a7b831', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('657c820d-3164-800f-3190-5ad5f577fe11', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('659bb3dd-b7fc-df4e-b1aa-5ad5f556e01b', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('65b447de-5e4d-af27-e39b-5ad5f5c5927a', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('65d4f21c-9068-2057-24ec-5ad5f576476c', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65eedbb4-8697-8c25-57df-5ad5f54b7e77', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('66111262-161a-b19e-8711-5ad5f57c6258', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('662900d9-c914-3cf4-14e7-5ad5f57c1863', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6646ff67-0951-4089-c2a9-5ad5f5c3ff0c', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('673a138e-6e2c-d208-9928-5ad5f5ec3bb3', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('675d6038-ced5-8fa8-d0cf-5ad5f54ade76', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('677624dc-ac41-f4ef-fd60-5ad5f55ce4d8', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67957d6f-b556-5553-95a9-5ad5f56737c4', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('67ae1d31-969a-f02f-20d6-5ad5f5c62613', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('67ce20b6-f211-2d5f-4533-5ad5f5ff116b', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('67e502f8-eaca-514c-a799-5ad5f5190f48', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('68056697-1357-3015-199f-5ad5f5f8ebc1', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('681e58fa-e250-d06f-3816-5ad5f587cdd9', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('683ba01e-ceec-a92d-2e82-5ad5f59c3e16', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6851cd32-c36e-0d82-14f4-5ad5f5a58263', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68693b0b-437d-e44a-bf3c-5ad5f5610d33', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d4a13a1-766d-d29a-ad37-5ad5f532def3', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d6e6c14-7ec7-8652-4470-5ad5f5d23509', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e348303-19fa-fc09-1cb3-5ad5f509019c', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('6e5b4083-1306-ef2a-9483-5ad5f58798d6', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ea3a1b9-8bc5-b969-cf09-5ad5f517244a', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ec954c8-182f-f807-15f9-5ad5f5a01f64', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('6eec4104-b499-64df-e1d3-5ad5f5b9976b', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f098a90-f002-902b-2554-5ad5f5c0ecaf', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f63c8bc-ef80-af52-33ef-5ad5f5a7bc76', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f872e29-d91b-6b26-bd3b-5ad5f5928eec', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fa8c14b-483a-038e-003c-5ad5f5f7921a', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fc18d99-d4f8-3a3c-60f9-5ad5f515dd64', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('6fe5588d-6293-79e2-7cf0-5ad5f5166fb9', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('6ffdd7bc-8ec5-31d5-6a55-5ad5f59ca139', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('705c7fb8-ee7f-b3af-b9ad-5ad5f560e8ef', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('707b26a9-eaa8-85fd-ce24-5ad5f57a5ad2', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('709cc427-4343-8a2b-5a1d-5ad5f56ad543', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70b44962-5caf-98b8-be7c-5ad5f5c0d1af', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('70d47cdc-cd42-72f1-bc39-5ad5f507cf25', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70ec47fc-e62d-4ce1-67b7-5ad5f5b3ceb8', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('71096285-0224-60c1-9098-5ad5f5a1fc30', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('7120aebf-ccaf-3a9a-7984-5ad5f5b23bc4', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('713f1455-cd89-12a9-7f1e-5ad5f56fb9c0', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('7156d534-d46d-6d25-a232-5ad5f5b4f793', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71a38319-7016-281c-bff3-5ad5f5c1f269', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71cddcf4-dfcc-3dac-d33b-5ad5f55e32ae', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71e37553-c76c-51a4-f6ec-5ad5f52c5259', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72099a0b-801e-b999-0e91-5ad5f59711ee', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('72200591-d5f9-c199-1942-5ad5f58b9140', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('72a34f86-5feb-f5e8-3ffd-5ad5f524f8f2', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72c1c23e-6742-b606-0e88-5ad5f5c60791', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72d94aab-a564-ed61-c0b4-5ad5f560904d', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72f75262-8d95-eb50-600f-5ad5f5f9303f', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('730f2a36-5b26-1636-777a-5ad5f552674b', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('73ea409f-7fec-d7c0-2d86-5ad5f527f2b3', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('74096bc7-ac05-b87b-b44b-5ad5f55ad58c', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7426d4b2-436a-f574-7154-5ad5f58ea153', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('747ab0ef-f336-aa91-3a8d-5ad5f53dbe86', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7498d1d6-2e19-5bd9-4225-5ad5f536443d', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('74b963d1-50b2-ec00-768c-5ad5f5895599', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('74cf3a80-fd91-ad7a-ed22-5ad5f57fae6f', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('74fc6b8a-9d61-5d65-8892-5ad5f575f448', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7526812a-ee7f-3bea-844f-5ad5f5f0bc10', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('756fd46d-5a8b-ac78-05b0-5ad5f5538efa', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('7594ef0c-cd86-6fc4-7861-5ad5f5b0bb75', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('75c4e136-f538-70ad-82d6-5ad5f52348ec', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7633d66a-e87c-5a0b-971a-5ad5f5405e4d', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76565cf6-b93f-c769-91a6-5ad5f535d2a2', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('767a9fda-a60c-234c-8cd4-5ad5f5807647', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76934d28-1387-9c48-3eb6-5ad5f5ad9ab1', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('79a91697-11ab-d9bb-7c6c-5ad5f51412aa', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79d0b1c0-a82b-edc8-6f2d-5ad5f5987689', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a0d81db-f9d9-4a1f-3160-5ad5f52d94dc', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a2e1c85-7395-f50d-c333-5ad5f5d1dd18', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a4da867-6d84-3f90-bdbe-5ad5f5a08af6', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a815bca-ee24-1f3a-b908-5ad5f5c449c4', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a9ff1eb-4449-6a80-300a-5ad5f57a70aa', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ab7df84-50ac-9efb-7098-5ad5f545fdf0', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7aefe5e5-2817-3167-7a15-5ad5f59e9266', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b122fe1-b5c3-28da-eaad-5ad5f58dc52c', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b27f763-b795-c3c8-40e4-5ad5f5e7d422', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b53f15f-16b3-6fd7-85eb-5ad5f59faaa3', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b69b1d4-c30c-f4f4-80b9-5ad5f57d0f80', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ba550f4-d230-75b5-045c-5ad5f59e2a38', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7bc5e944-fa64-76c6-2ff1-5ad5f568fac3', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7bde2e84-8677-b54f-a7a5-5ad5f58ce03b', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c172c52-a074-dccd-ae67-5ad5f5e03ae0', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c35dec0-bd54-3cab-a5f9-5ad5f516a42a', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c5617b7-e519-533a-15ef-5ad5f5ce372b', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c87aac0-ed09-7c51-cbf0-5ad5f5dfaa52', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ca93a2c-8830-adc5-615d-5ad5f58c4175', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7cc5bcfb-76a9-2248-18d9-5ad5f5c76921', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7cfe22b5-d364-8dd5-a438-5ad5f58bb184', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d263e96-d5b4-21a0-6ad4-5ad5f5f648d9', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d434a96-de15-5f5b-a2d7-5ad5f596a89b', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d8796c7-02e0-b47a-1723-5ad5f550afdb', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7de00c5f-0a3f-23dc-5f2f-5ad5f54ecf9f', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e010906-6edd-b295-dcb2-5ad5f5d126b2', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e1933e4-4f14-4b48-f02b-5ad5f5a6e24e', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('7e539198-bea1-f9c8-28fd-5ad5f5953778', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e7491b2-6197-cda7-05d5-5ad5f509037a', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7eb93f7e-7a6d-abe3-392e-5ad5f5b4eef4', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ef84287-8b81-d042-d790-5ad5f5692526', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f1bab1b-8515-5f2e-7722-5ad5f544132d', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f3a762b-1a3a-7b87-1739-5ad5f50c6265', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f7f8754-7b4e-4505-1231-5ad5f531c8fb', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fa18f9a-8eda-4926-5fae-5ad5f5cd9027', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fc3d54a-6e28-0331-8ffc-5ad5f5d94276', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fdb7040-496c-a324-9a06-5ad5f5b12131', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('801c191f-0014-69b4-038f-5ad5f5a86cff', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('803dbaaf-3869-19d4-9982-5ad5f58cd728', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80575865-b0b1-3509-c0e0-5ad5f539ede2', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8074dee8-0045-51c4-b300-5ad5f5013295', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('808f4dce-86cb-501d-c441-5ad5f5f5681d', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('80ab9dc7-3f1a-b22c-0435-5ad5f58fda7d', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('80dea3e2-31a5-d73e-920f-5ad5f5333ec7', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81005123-ce44-fd34-cfbe-5ad5f521577d', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8120cade-4481-7a80-4955-5ad5f5932ff2', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('815f78ed-fdbc-8ac3-b2ac-5ad5f5fe7cd1', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('817f5dd8-e556-1ba2-14d3-5ad5f53b537d', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('819c29b6-e279-b2c8-e02b-5ad5f55043f5', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81d322f9-792e-be7e-667c-5ad5f51da975', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81f68433-1dbe-09a8-49a8-5ad5f5bdd4dd', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('821081a1-99a2-3f41-1b5e-5ad5f58db8bc', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8232bbe0-583b-7332-2b64-5ad5f5b62297', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8267234b-7597-9941-b51a-5ad5f5203aaf', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82972524-7f03-8f9b-d984-5ad5f59e92e1', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82b8e9ea-a3b1-9ef5-ee6d-5ad5f59cbfe8', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82d6f0e0-8e90-17b1-46d8-5ad5f5f56638', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82fa3d51-221e-35dd-6832-5ad5f586e17d', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('85cfa919-b0db-773a-ff9c-5ad5f51da0da', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85f92309-8c18-efb7-b24d-5ad5f50cc627', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('861d907d-90c3-ba5f-9778-5ad5f5659490', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86364d6a-a756-e2c8-807b-5ad5f5db7f4b', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('8657e6f2-df0e-3d2c-33f6-5ad5f5278f43', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86710e6a-580b-2d20-b6d8-5ad5f5e42199', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('868ffb65-accc-5e7c-0723-5ad5f5c82eac', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86c94794-ce78-4bf6-cced-5ad5f5e40236', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86ed49cd-d02f-5810-14c5-5ad5f5f4b273', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('87238d43-0bf8-1de7-6b05-5ad5f53b0316', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('87415f8f-959e-9928-b17e-5ad5f50d9a4e', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92341653-213c-327c-33b3-5ad5f511d546', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92815aaf-819d-6acb-81a7-5ad5f5c72a6f', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92a11175-4eb4-e7fb-190b-5ad5f55f02a5', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92db8306-e3a5-f7df-a84b-5ad5f5c738bd', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92fef8d4-f77e-cf4a-dc78-5ad5f51b5956', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('936009cd-8de2-5146-1654-5ad5f57d3c15', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93813746-2d3c-9ecd-2351-5ad5f52782f1', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93989da0-d1ee-e13a-70ea-5ad5f526a944', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93b5ae14-36ad-82d2-2092-5ad5f530fb5d', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('93cccb90-ad6a-7f8b-d0de-5ad5f592c7bf', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('93eae8c4-45fa-7f45-a5b9-5ad5f5c255df', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('9402b165-11e5-d679-698f-5ad5f5650a9e', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('941b5771-a6b4-0158-8fbc-5ad5f50c2347', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('943718e7-80aa-efe9-76f4-5ad5f50611c7', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('944f00c3-5b56-d54f-073d-5ad5f504980e', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('949dbf37-3d89-7d6b-6ce6-5ad5f517694e', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94bde29d-ea05-e366-d472-5ad5f58c9544', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94d57af1-79c8-68a8-5bc2-5ad5f5620dea', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94f165ad-2f09-42d8-511a-5ad5f5b08c8e', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('950aaa62-2610-c490-3e7f-5ad5f5d58ff5', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95287193-0b31-b56d-fa6b-5ad5f551c251', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9564f372-e9d1-8f41-41c5-5ad5f5295b77', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9587cf80-3009-5590-3cb2-5ad5f56a17af', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95a831cf-942f-6e6f-d88a-5ad5f5e76cc5', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95c1f470-b05d-379e-ef79-5ad5f5c44e13', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('95fea732-d439-2d78-c7cf-5ad5f511d024', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96179127-7bbe-2880-fc59-5ad5f5213bc8', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9636507d-2274-f5f0-634b-5ad5f5ef32d1', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e67593e-10fa-8094-8557-5ad5f5a186f0', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('9e8e36ac-210a-d3a2-1fa5-5ad5f5fda664', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ee1ede3-a7c8-260f-fbc4-5ad5f57a8469', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f01e940-42d0-6a04-6c1e-5ad5f516448d', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f1a0109-a5df-d3b8-6333-5ad5f5d1e4cf', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f394f70-a028-80e8-e0c5-5ad5f5430f4d', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('9f4fbd7a-0b5d-affc-113e-5ad5f51c7b83', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f9b3d77-fba9-92cd-debd-5ad5f5efab54', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fbb5865-152a-fdd5-49b6-5ad5f5fd261f', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fd46f24-d041-3ea9-ea5f-5ad5f50da78c', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ff4bb07-4757-626f-80e4-5ad5f55c587c', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a03159ad-f9f9-7813-e904-5ad5f593168c', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0530da5-0212-b307-7e45-5ad5f5e10486', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0728b7c-194c-d4f2-88c2-5ad5f54c1b8b', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0888409-f1ca-30ed-6cd4-5ad5f5a82f4a', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0e30549-3cc1-c17e-ba47-5ad5f53943b1', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a108f9a8-5559-d232-59a9-5ad5f5a68987', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a128433e-5faa-bb65-b20b-5ad5f5235b06', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a13e2735-2ee7-78c5-95e3-5ad5f54726fb', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('a15e6571-3c4e-8bb4-3413-5ad5f519a593', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a174fc8b-5fcf-62ca-76cb-5ad5f5838fd7', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1a4ad15-b209-e911-b14a-5ad5f583bfc1', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1c64e88-0094-a7ce-6a86-5ad5f5df9ff7', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a20e7835-6f0a-980a-4535-5ad5f561c06a', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a230a3f2-a6ee-7543-f754-5ad5f5ee3a8b', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a24a0481-c2a3-ff6d-4fe0-5ad5f5231434', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a26c2c4e-1e7c-026c-8683-5ad5f5bbb972', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('a286a9fe-fdbb-e668-2fc6-5ad5f53a60e3', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2a64dd3-fb90-218a-e98d-5ad5f5bf6052', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2be96a9-8872-ce58-a2d1-5ad5f584877d', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2f3ffe6-a93a-9495-7c46-5ad5f5b086b6', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a311916d-ea8e-9c02-aed7-5ad5f59294d4', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3416c93-3455-33ab-0f37-5ad5f5964c2d', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a35ff1d8-5eae-aee4-fd0e-5ad5f53ed0f2', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3d0846c-1bba-1f92-8c53-5ad5f5aef73d', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3f2b725-3901-70b7-6767-5ad5f5e1b9aa', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a40fcd06-5e4d-f243-5779-5ad5f59311b5', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a428af01-1331-ac4f-7b95-5ad5f57b467b', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('a446e1d1-6557-9689-9315-5ad5f5a08b75', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('a45f7884-ae0c-f3d6-1a29-5ad5f5929bbf', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('a4783125-ebff-53bf-2918-5ad5f578b552', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('a499f7aa-88ed-7bfd-02fa-5ad5f5fb3ce0', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('a4b016f8-339f-2e3d-1179-5ad5f5846eae', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('a4d05281-3637-c201-65c7-5ad5f58be40d', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('a4e6b600-3568-3eb1-5ce4-5ad5f56b8bd9', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('a508fdc8-2e0b-21ed-2f15-5ad5f506d96d', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('a5656a6c-7136-326a-2612-5ad5f59843ad', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a58523fd-fc57-966d-0572-5ad5f5888a3d', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a59c1d88-b215-9f58-0887-5ad5f562503c', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5b3fe72-7576-6c7f-bf75-5ad5f5de59ca', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('a612927e-6273-0f6a-b305-5ad5f5e815b9', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a63b107b-661f-8d76-1c82-5ad5f592a8c0', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a65c1c90-fe3f-038e-e2f1-5ad5f53643ed', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a678d6dc-83d7-5b37-cf3c-5ad5f5877410', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('a6c77a5a-3e10-787d-bc6f-5ad5f571ce39', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6ec0e40-9fc5-b56f-1424-5ad5f577220a', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a70d9bb1-97ea-bf1e-e84d-5ad5f528bf03', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a743056b-5ec0-57a1-ba5a-5ad5f5361d36', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a76901be-e742-0815-136d-5ad5f5409801', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7891d02-0dca-bf95-8fdc-5ad5f5a27da6', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7bd0933-2811-6ab5-cb44-5ad5f5f083f7', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7df8fa4-4a03-4abc-3a13-5ad5f542aa9d', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8004d1c-f085-4f80-5ab5-5ad5f5f733ee', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a830619e-67e8-4ed7-a277-5ad5f5fc8729', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a85237d4-4461-b373-a116-5ad5f5d6a6c7', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a86e2960-97d2-16a0-d281-5ad5f50763da', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a89b4e0e-bbfa-f987-524c-5ad5f5997867', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8b92160-e898-0e07-3499-5ad5f59a6f21', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8eb9250-4e81-7838-682b-5ad5f50f9202', 'oauth2tokens_modified_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a90959f0-8fb1-d4e7-2ade-5ad5f5def793', 'oauth2tokens_created_by', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9206771-873d-34bc-e4d9-5ad5f51de709', 'oauth2tokens_assigned_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a956c3af-b0b6-b830-a5af-5ad5f5dabfd1', 'oauth2clients_modified_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a97327a3-ff0a-9e5d-78b0-5ad5f5bfd524', 'oauth2clients_created_by', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a98afdbe-2ea6-5ae5-a583-5ad5f53c219a', 'oauth2clients_oauth2tokens', 'OAuth2Clients', 'oauth2clients', 'id', 'OAuth2Tokens', 'oauth2tokens', 'client', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9a957f9-ce74-48a5-08cd-5ad5f5356745', 'oauth2clients_assigned_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9e3180f-252c-3997-0818-5ad5f5fd9d26', 'surveyresponses_modified_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa0553c0-1de7-a15b-a7a7-5ad5f593e9c7', 'surveyresponses_created_by', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa239ac6-83ef-48f2-0e4e-5ad5f5050480', 'surveyresponses_assigned_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa3aa37c-e373-092f-d36d-5ad5f5b182d3', 'securitygroups_surveyresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyResponses', 'surveyresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyResponses', 0, 0),
('aa55615f-1417-d02a-0ac3-5ad5f526e481', 'surveyresponses_surveyquestionresponses', 'SurveyResponses', 'surveyresponses', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyresponse_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa95a50f-8c20-8e06-0597-5ad5f50b269c', 'surveys_modified_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aab4e572-ff0b-50d7-6d29-5ad5f5102a2a', 'surveys_created_by', 'Users', 'users', 'id', 'Surveys', 'surveys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aacc3dd3-6a82-b548-970c-5ad5f573d1a1', 'surveys_assigned_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aaed2f6c-1a5b-21bc-edf8-5ad5f5fd81ad', 'securitygroups_surveys', 'SecurityGroups', 'securitygroups', 'id', 'Surveys', 'surveys', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Surveys', 0, 0),
('ab07b9e1-4925-dddc-7169-5ad5f5fb8e63', 'surveys_surveyquestions', 'Surveys', 'surveys', 'id', 'SurveyQuestions', 'surveyquestions', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab2abb42-e1fe-2b85-bd84-5ad5f5ea79e8', 'surveys_surveyresponses', 'Surveys', 'surveys', 'id', 'SurveyResponses', 'surveyresponses', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab66bc8a-915e-e1c5-4fa9-5ad5f5f1bb7d', 'surveyquestionresponses_modified_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab8b4ef8-5f2f-f2f2-abeb-5ad5f50afd76', 'surveyquestionresponses_created_by', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aba79726-8745-f891-0615-5ad5f5f4c448', 'surveyquestionresponses_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('abbf3c4e-61ed-ed2a-d40f-5ad5f5ca2082', 'securitygroups_surveyquestionresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionResponses', 0, 0),
('abfc7c09-264a-46a0-ed6a-5ad5f51045bb', 'surveyquestions_modified_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac1dfc1e-ed8a-39a3-e5f0-5ad5f5684438', 'surveyquestions_created_by', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac34ce3e-6658-2711-b7a1-5ad5f53c7177', 'surveyquestions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac4f32af-ae78-6d53-50d3-5ad5f584de3e', 'securitygroups_surveyquestions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestions', 'surveyquestions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestions', 0, 0),
('ac706f93-5878-9483-63c4-5ad5f54e4870', 'surveyquestions_surveyquestionoptions', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'survey_question_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('acace3dd-f124-b792-ec98-5ad5f56957b0', 'surveyquestionoptions_modified_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('accfe35f-1f4a-f65b-6ae8-5ad5f5f4fb19', 'surveyquestionoptions_created_by', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('acef0ed2-0337-4e2e-7193-5ad5f5ec85d1', 'surveyquestionoptions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad0505fd-80cd-f491-1d97-5ad5f59e11ab', 'securitygroups_surveyquestionoptions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionOptions', 0, 0),
('ae5751fc-78e7-f7b7-f609-5ad5f557d5fe', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('bac37804-23a6-9666-66ce-5ad5f5c220c1', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('baef1f15-5dfe-24d6-1325-5ad5f5368fd2', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('c6f6c96e-ec9b-6d0d-d44f-5ad5f577f20c', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c72395c4-c926-ff1e-10e7-5ad5f5f7f6b7', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('c74a8144-09b5-e8e6-1f7a-5ad5f53a2134', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('d3285c61-efba-b016-1d32-5ad5f5f03c7f', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('d34f4090-c102-ede3-658e-5ad5f5bf8f1c', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('d3735326-dcee-6c64-6f48-5ad5f5499356', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('d38d44b3-f4ef-8b95-5cd5-5ad5f597a6e4', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('d3bd6e65-c424-ba44-2f48-5ad5f5c2bec7', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('d3d6d01f-6cfd-36e6-0f8b-5ad5f5b8dd67', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('d4121e36-f288-68e0-aded-5ad5f5fd5611', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('d4369614-91e8-788a-3533-5ad5f5f5fd29', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('d453efc6-8619-df2d-a05f-5ad5f54bd1b2', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('d4718946-6bbb-eba2-5863-5ad5f52e7b65', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('d489fdaf-8280-c99b-2190-5ad5f5f8bee8', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('d4a7094f-39fc-2e36-103e-5ad5f5e85f2d', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('d4c1792d-ba08-a46f-7944-5ad5f5c7447c', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('d4e14d40-1973-013b-946f-5ad5f5afecd5', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('d4f93115-2507-c661-11ef-5ad5f53bb375', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('d5122ed1-2252-1867-3f2c-5ad5f50b1a50', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('d53252de-923e-4758-68c8-5ad5f5528958', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('d54e0867-cdb0-f256-5050-5ad5f59460c5', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('d56c3b05-91b0-27d9-4517-5ad5f58e5a80', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('d5824c32-b42d-dbe5-b45f-5ad5f5135834', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('d5a3cc55-30af-bc74-750b-5ad5f53bcc82', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('d5ba833b-4f68-9a75-fa08-5ad5f55b945e', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('d5da2558-6baf-1769-a2dd-5ad5f51746c6', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('d5f43577-d853-cab0-e843-5ad5f543bc99', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('d60dd7c7-3974-d4d8-5ee6-5ad5f5a070dd', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('d63095c4-75f0-679a-7a99-5ad5f56fb2a3', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('d64a5dbb-161d-5f21-1225-5ad5f5580da7', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('df5a7ede-454b-0a76-2b99-5ad5f500bf0e', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('df824690-f249-075a-bcaf-5ad5f50fd972', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('dfa60a3a-3cf1-0e22-2305-5ad5f54b6915', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('dfc236e1-cc5c-7349-1030-5ad5f5054564', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('dfe13b8e-5ba1-5dab-a5b9-5ad5f58ffcff', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('dffbed28-a6af-0650-2b26-5ad5f5a280d4', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('e01ad68d-c320-e763-634b-5ad5f5607dee', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('e0349b46-1b1d-9cce-3cea-5ad5f5b2aab0', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('e050a422-48b1-f8f2-1fb8-5ad5f506308d', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('e07497e6-c746-f6ab-8049-5ad5f593da93', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('e094d074-9383-989d-ba43-5ad5f564b8e3', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('e0b2a03a-3592-b4b4-83bb-5ad5f5b11c91', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('e0cad35d-c2ca-a645-31c2-5ad5f5f83edb', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('e0ef07ea-8981-1b30-70ed-5ad5f52f0d20', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('e1074559-3ae2-c25b-6c98-5ad5f54d519f', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('e12d14ae-0f02-d815-956a-5ad5f5bc3b57', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('e14632a8-7147-9cfe-2aab-5ad5f5f08e51', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('e16af6fa-e616-59a2-4c73-5ad5f5eff38e', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('e1855a1f-0fcf-376b-f773-5ad5f5d269d1', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('e1a93825-2d09-743a-eb37-5ad5f5a76017', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('e1c5ae3c-79eb-d50e-b9a2-5ad5f5caded1', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('e1e7ca31-b8d8-9d9f-8f6c-5ad5f57949cf', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('e20173e1-35ab-5384-fe46-5ad5f5ba1494', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('e222e873-a55f-3f58-cde1-5ad5f55a6bd5', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('e23ee7dd-a24e-7978-c415-5ad5f56bdac1', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('e25ee20d-e379-6879-5ac1-5ad5f5b1a044', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('e277e3e5-d34c-ba7a-e245-5ad5f5361325', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('e2951dd3-7d4c-1da0-a989-5ad5f5733923', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('e2ae6227-1e13-8079-6e88-5ad5f5d6ceee', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('e2cd82f8-afb1-86f9-9dae-5ad5f5525720', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('e36c5b22-38d8-b496-81cc-5ad5f581435e', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('e38f126a-6834-eeec-3973-5ad5f513d46d', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('ec5a547f-d14c-dd9d-b940-5ad5f5a6c864', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('ec8c2fb5-9107-1ec0-637e-5ad5f5e58350', 'surveyquestionoptions_surveyquestionresponses', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'surveyquestionoptions_surveyquestionresponses', 'surveyq72c7options_ida', 'surveyq10d4sponses_idb', 'many-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT '-1',
  `popup_viewed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('ac186afb-0c33-1406-c9b2-5ad5f5cde4b5', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 14:30:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('ae0298bd-af2e-6305-e6b0-5ad5f5fad322', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 09:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('b162b353-d230-a515-a6e3-5ad5f524bdbc', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 11:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('b30edbb4-9375-385a-d89c-5ad5f55697a8', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 06:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('b539cc18-86a2-5a32-937f-5ad5f5e312af', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 08:15:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('b6e16773-b074-3840-ab8f-5ad5f5671c7e', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 07:00:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('b88fd893-faa7-8bb0-b970-5ad5f57aa6aa', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 11:00:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('ba385289-3ca6-3434-f893-5ad5f5def85b', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 18:45:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('bbcf4b2f-d633-5c9d-20bf-5ad5f53fb904', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 14:30:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('bdf70292-f0a4-aead-74b2-5ad5f54ce6e3', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 16:30:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('c0fd4be4-783a-3950-958e-5ad5f56634e2', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 18:00:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('c3129926-8700-ee33-62b9-5ad5f573a4b9', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 07:15:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('c4d423f3-58e1-689f-0f8f-5ad5f5ba439a', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 10:15:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions`
--

CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_audit`
--

CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses`
--

CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses_audit`
--

CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions_audit`
--

CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses`
--

CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses_audit`
--

CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveys_audit`
--

CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`, `factor_auth`, `factor_auth_interface`) VALUES
('1', 'admin', '$1$taQJ9B.T$jXLucnmQrQHBW174VldfQ.', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('6cd1c0a3-1e37-df42-b447-5ad5f5726658', 'global', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', 'YToyOTp7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTI6Im1haWxtZXJnZV9vbiI7czoyOiJvbiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyOiJ1dCI7czoxOiIxIjtzOjU6ImRhdGVmIjtzOjU6ImQvbS9ZIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6OToibG9jYWxob3N0IjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czoxOiIwIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MTtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7fQ=='),
('6e4465f8-5d19-528f-5435-5ad5f59a4b76', 'ETag', 0, '2018-04-17 13:23:34', '2018-04-17 13:23:34', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indexes for table `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Indexes for table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indexes for table `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Indexes for table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indexes for table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indexes for table `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indexes for table `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indexes for table `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indexes for table `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indexes for table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indexes for table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indexes for table `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indexes for table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indexes for table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indexes for table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indexes for table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indexes for table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indexes for table `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indexes for table `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indexes for table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addresses_audit`
--
ALTER TABLE `email_addresses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_addresses_parent_id` (`parent_id`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indexes for table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indexes for table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indexes for table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indexes for table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indexes for table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indexes for table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indexes for table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indexes for table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indexes for table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth2clients`
--
ALTER TABLE `oauth2clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth2tokens`
--
ALTER TABLE `oauth2tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indexes for table `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Indexes for table `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indexes for table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indexes for table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indexes for table `surveyquestionoptions`
--
ALTER TABLE `surveyquestionoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionoptions_audit`
--
ALTER TABLE `surveyquestionoptions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionoptions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestionoptions_surveyquestionresponses`
--
ALTER TABLE `surveyquestionoptions_surveyquestionresponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`);

--
-- Indexes for table `surveyquestionresponses`
--
ALTER TABLE `surveyquestionresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionresponses_audit`
--
ALTER TABLE `surveyquestionresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestions_audit`
--
ALTER TABLE `surveyquestions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyresponses`
--
ALTER TABLE `surveyresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyresponses_audit`
--
ALTER TABLE `surveyresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys_audit`
--
ALTER TABLE `surveys_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveys_parent_id` (`parent_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
