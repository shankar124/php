ALTER TABLE `CityMaster` ADD `TaxRate` FLOAT(10,4) NOT NULL AFTER `CityIsActive`;
 
ALTER TABLE `Cinema` ADD `CinemaShareRate` FLOAT(10,4) NOT NULL AFTER `RedeemTime`;
 
ALTER TABLE `DistributorMaster` ADD `DistributorShareRate` FLOAT(10,4) NOT NULL AFTER `DistributorMobile`;
 
 
CREATE TABLE `PaymentGateway` (
  `PG_ID` int(11) NOT NULL,
  `PG_Name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `PG_Fixed_Fees` float(10,4) NOT NULL,
  `PG_Variable_Fee_Rate` float(10,4) NOT NULL,
  `IsActive` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `ModifyBy` int(11) NOT NULL,
  `ModifyOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
 
ALTER TABLE `PaymentGateway`
  ADD PRIMARY KEY (`PG_ID`);
 
ALTER TABLE `PaymentGateway`
  MODIFY `PG_ID` int(11) NOT NULL AUTO_INCREMENT;
 
 
ALTER TABLE `CinemaMovieSeatPrice` ADD `ServiceFee` FLOAT(10,4) NOT NULL AFTER `Price`;
 
ALTER TABLE `ReserveBooking` ADD `ServiceFee` FLOAT(10,4) NOT NULL AFTER `ticketprice`, ADD `TaxRate` FLOAT(10,4) NOT NULL AFTER `ServiceFee`, ADD `TaxAmount` FLOAT(10,4) NOT NULL AFTER `TaxRate`;
 
 
ALTER TABLE `ReserveBooking` CHANGE `TaxAmount` `TaxAmount` FLOAT(10,4) NULL;
ALTER TABLE `ReserveBooking` CHANGE `ServiceFee` `ServiceFee` FLOAT(10,4) NULL;
ALTER TABLE `ReserveBooking` CHANGE `TaxRate` `TaxRate` FLOAT(10,4) NULL;
 
ALTER TABLE `ReserveBooking` ADD `TotalTaxAmount` FLOAT(10,4) NULL AFTER `TaxAmount`;
 
ALTER TABLE `TrsactionDetails` ADD `PG_ID` INT(11) NOT NULL AFTER `RedeemDate`, ADD INDEX (`PG_ID`);
 
UPDATE `version` SET `dbVersion`='2' WHERE 1;
