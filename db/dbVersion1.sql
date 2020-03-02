--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `dbVersion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `CouponLog` ADD `CouponID` INT(11) NOT NULL AFTER `ConfirmID`;
ALTER TABLE `CouponLog` ADD `Percentage` TINYINT(2) NOT NULL AFTER `Coupon`;

ALTER TABLE `CouponLog` CHANGE `CouponID` `CouponID` INT(11) NULL DEFAULT NULL;
ALTER TABLE `CouponLog` CHANGE `Percentage` `Percentage` TINYINT(2) NOT NULL DEFAULT '0';


INSERT INTO `version` (`dbVersion`) VALUES ('1');
