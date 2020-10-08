-- Factory data
INSERT INTO `FACTORY` (`Registration_number`,`Building_number`,`Locality`,`City`) VALUES (25384975599,1855,"Alsace","Mulhouse"),(78394283599,277,"RM","San Miguel"),(93582876899,1822,"Victoria","Warrnambool"),(96214035299,456,"SS","Hastings"),(11881287799,1752,"Sicilia","Nicolosi"),(13290890399,579,"Leinster","Dublin"),(94762035499,343,"AMU","Zeya"),(54543807999,972,"Gye","Seoul"),(44612526399,401,"Khyber Pakhtoonkhwa","Karak"),(15267374799,419,"Wie","Vienna");

-- Customer data
INSERT INTO `CUSTOMER` (`Aadhar_number`,`First_name`,`Last_name`,`Email`,`Address`) VALUES (727902571299,"Maisie","Langley","at@Fuscefermentum.ca","496-784 Neque. Av."),(121275323599,"Burke","Day","ante.ipsum@sagittisfelisDonec.ca","Ap #423-1959 Molestie Street"),(223956744199,"Lenore","Pearson","Sed.nulla.ante@dolor.co.uk","Ap #853-5888 Est. St."),(624604992499,"Deacon","Beasley","Class.aptent.taciti@Quisque.com","P.O. Box 691, 8449 Donec Road"),(201251929199,"Curran","Joyce","Phasellus@mattis.org","P.O. Box 722, 5469 Nam Road"),(126207266699,"Silas","Case","Fusce.aliquam@interdum.org","P.O. Box 120, 7463 Massa Ave"),(222369836799,"Daphne","Lester","metus@tinciduntvehicula.org","P.O. Box 440, 6446 Quis, Street"),(621827692199,"Stone","Garner","est.vitae@Quisqueimperdieterat.com","P.O. Box 331, 9268 Fusce St."),(525375480699,"Kasper","Campbell","Maecenas.iaculis.aliquet@nisinibh.ca","2137 Phasellus St."),(923200969299,"Raya","Giles","hendrerit.a@etmagnis.edu","Ap #908-2237 Placerat, Rd.");

-- Employee data
INSERT INTO `EMPLOYEE` (`Employee_id`,`First_name`,`Last_name`,`Salary`,`Pan_Number`,`Hours`) VALUES (439,"Abel","Banks",44299,"SUT46KXR4CA",10),(437,"Jennifer","Payne",15876,"RGK24HZH6HJ",7),(527,"Alden","Zamora",14946,"HAV73PHH0YF",10),(835,"Judah","Dixon",37688,"ODY52OCC6BQ",10),(460,"Danielle","Rivers",38696,"VCN62BMG5TS",8),(666,"Felix","Reed",33859,"CAE80RSX1LZ",4),(692,"Aquila","Mcgowan",34886,"HQZ99DUK9AW",7),(966,"Caesar","Foreman",18052,"DBC96QXQ1YK",8),(494,"Alden","Lyons",24880,"KYQ95PQS6NX",7),(349,"Preston","Zimmerman",23318,"QLG58SLP7WW",5);

-- Service center data
INSERT INTO `SERVICE_CENTER` (`Center_id`,`Name`,`Address`) VALUES (792,"Ornare Inc.","P.O. Box 350, 665 Vivamus Rd."),(3294,"Cum Sociis Natoque LLP","466-458 Magnis Avenue"),(462,"Nulla Corporation","Ap #615-9014 Vel Rd."),(12570,"Tristique Industries","Ap #400-6291 A St."),(1589,"Sapien Cursus Industries","6300 In Avenue"),(368,"Sit Amet Company","4027 At Street"),(6717,"Pellentesque Sed Dictum Associates","Ap #190-8851 Aliquet Ave"),(19648,"Nunc Mauris LLC","P.O. Box 672, 3675 Elementum, Ave"),(2347,"Pede Blandit Limited","1400 Arcu. Avenue"),(11837,"Nunc Sollicitudin Commodo Associates","930-8830 Sed St.");

-- Cleaning Agency data
INSERT INTO `CLEANING_AGENCY` (`Registration_number`,`Name`) VALUES (18159,"Maecenas LLC"),(171602,"Congue A Incorporated"),(12337,"Enim Etiam Ltd"),(113834,"Amet PC");

-- Vehicle data
INSERT INTO `VEHICLE` (`Vehicle_id`,`Model_name`,`Passenger_capacity`) VALUES ("LM09E4920","i20",4),("HO99U2208","honda city",4),("IR92T9816","swift dezire",4),("EF46E2304","royal enfield classic 350",2),("CN38T9419","hyundai verna",5),("JB96E9889","honda city",4),("BT12J0527","swift dezire",4),("YM02F4753","ford ecosport",6),("PP25A2128","hyundai creta",4),("JF00L9809","hyundai creta",4);

-- Voucher data
INSERT INTO `VOUCHER` (`Voucher_number`,`Type`,`Valid_date`) VALUES (91971,"Aliquam Tincidunt Nunc Ltd","2020-10-23 01:07:20"),(92050,"Enim Nec Tempus Incorporated","2021-06-19 04:58:38"),(91301,"Tellus Imperdiet Limited","2020-10-07 11:48:07"),(96620,"Aliquam Vulputate Corporation","2021-01-23 12:39:22"),(90170,"Auctor Associates","2020-11-06 05:52:49"),(92310,"Magna Consulting","2021-05-17 17:08:38");

-- Supplies data
INSERT INTO `SUPPLIES` (`Vehicle_id`,`Factory_id`,`Date`,`Price`) VALUES ("LM09E4920",25384975599,"2020-02-23 01:07:20",320056),("HO99U2208",78394283599,"2020-02-26 04:58:38",200000),("IR92T9816",78394283599,"2020-04-13 03:07:20",422000),("EF46E2304",11881287799,"2019-11-21 04:27:20",175000),("CN38T9419",25384975599,"2020-06-11 02:12:25",765000),("JB96E9889",96214035299,"2020-10-05 04:12:29",823400),("BT12J0527",96214035299,"2019-02-21 01:57:29",755000),("YM02F4753",44612526399,"2020-05-02 03:27:30",350000),("PP25A2128",44612526399,"2020-03-07 01:09:20",450000),("JF00L9809",25384975599,"2020-02-23 05:47:21",450000);

-- Purchases vehicle from data
INSERT INTO `PURCHASES_VEHICLE_FROM` (`Factory_id`,`Manager_id`) VALUES (25384975599,527),(78394283599,527),(11881287799,527),(96214035299,527),(44612526399,527);

-- Manager data
INSERT INTO `MANAGER` (`Manager_id`,`start_date`) VALUES (527,2018-06-14);

-- SalesPerson data
INSERT INTO `SALESPERSON` (`SalesPerson_id`,`Reporter_id`) VALUES (439,460),(437,NULL),(835,437),(460,835),(666,692),(692,966),(966,NULL),(494,966),(349,494);

-- Car data
INSERT INTO `CAR` (`Vehicle_id`,`Car_Type`,`Fuel`) VALUES ("LM09E4920","hatchback","petrol"),("HO99U2208","sedan","diesel"),("IR92T9816","sedan","petrol"),("CN38T9419","sedan","diesel"),("JB96E9889","sedan","petrol"),("BT12J0527","sedan","petrol"),("YM02F4753","SUV","petrol"),("PP25A2128","hatchback","diesel"),("JF00L9809","hatchback","petrol");

-- Bike data
INSERT INTO `BIKE` (`Vehicle_id`) VALUES ("EF46E2304");

-- Cleaner data
INSERT INTO `CLEANER` (`Agency_id`,`Cleaner_id`,`Name`) VALUES (18159,123,"Eddy Frank"),(18159,223,"John"),(18159,125,"Emily williams"),(171602,221,"Siya roy"),(171602,223,"Elsa paul"),(12337,243,"Ram mohan"),(12337,247,"Riya gupta"),(113834,112,"sneha arora"),(113834,132,"riya chakraborty"),(113834,212,"Tathagato roy");

-- Employee has voucher data
INSERT INTO `EMPLOYEE` (`Employee_id`,`Voucher_number`) VALUES (439,91971),(439,92050),(460,91971),(439,92310),(437,92050),(527,92310),(835,91971),(460,91301);

-- Customer contact data
INSERT INTO `CUSTOMER_CONTACT` (`Aadhar_number`,`Contact_number`) VALUES (727902571299,9922445566),(121275323599,8899112233),(223956744199,4343569898),(624604992499,2222444456),(201251929199,9810101044),(126207266699,8888899999);

-- Factory contact data
INSERT INTO `FACTORY_CONTACT` (`Registration_number`,`Contact_number`) VALUES (25384975599,9932445566),(25384975599,8779112233),(78394283599,9343569898),(78394283599,9922444456),(93582876899,9920201044),(96214035299,9778899999);

-- cleaning agency contact data
INSERT INTO `CLEANING_AGENCY_CONTACT` (`Registration_number`,`Contact_number`) VALUES (18159,9932353566),(12337,8734112233),(18159,9347869898),(113834,9922131356),(12337,9920231344),(113834,9778891219);

-- contracts data
INSERT INTO `CONTRACTS` (`Manager_id`,`Cleaning_Agency_id`) VALUES (527,18159),(527,12337);

