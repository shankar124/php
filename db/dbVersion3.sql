
ALTER TABLE `ReserveBooking` CHANGE `internethandlingcharge` `internethandlingcharge` FLOAT(10,2) NULL DEFAULT NULL;

ALTER TABLE `ReserveBooking` CHANGE `ticketprice` `ticketprice` FLOAT(10,2) NOT NULL;

ALTER TABLE `ReserveBooking` CHANGE `totalprice` `totalprice` FLOAT(10,2) NULL DEFAULT NULL;

ALTER TABLE `TrsactionDetails` CHANGE `TicketPrice` `TicketPrice` FLOAT(10,2) NOT NULL;


DROP TABLE `Payment`;

CREATE TABLE `Payment` (
  `ID` int(11) NOT NULL,
  `ReserveID` int(11) NOT NULL,
  `token` text CHARACTER SET utf8 NOT NULL,
  `Date` datetime DEFAULT NULL,
  `pgstatus` int(1) NOT NULL DEFAULT '0',
  `bookstatus` int(11) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `coupon` varchar(100) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `BookingID` int(11) DEFAULT NULL,
  `ChargeID` varchar(100) DEFAULT NULL,
  `PaymentIntent` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `Payment`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `Payment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

UPDATE `version` SET `dbVersion`='3' WHERE 1;
