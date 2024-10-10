/* Select Queries*/

/*select all room that from cruiseShipID 2*/
select * from room where cruiseShipID = 2;

/*select all paymentrecord with paymentrecorddate below a certain level*/
select * from paymentrecord where paymentrecorddate < '2024-10-10';

/* select all customers with an address in the city of Krabi */
SELECT customer.customerID, customer.customerName, address.city
FROM customer
JOIN address ON customer.customerID = address.addressID
WHERE address.city = 'Krabi';





/*Update Queries*/
/*update hotelName*/
select * from hotel;
update hotel set hotelname = 'Mamamia' where hotelID = 2;

/*update paymentRocordDate of paymentRecord*/
select paymentrecordID,paymentrecordDate from paymentrecord;
update paymentrecord set paymentrecordDate = '2024-10-15' where paymentrecordID = 1;


/*More Queries*/
SELECT cruiseship.cruiseShipID, cruiseship.cruiseShipLine, cruiseshipcompany.cruiseShipCompanyName, room.roomID 
FROM cruiseship
JOIN cruiseshipcompany ON cruiseship.cruiseShipID = cruiseshipcompany.cruiseShipID
JOIN room ON cruiseship.cruiseShipID = room.cruiseShipID;

/* select all cruise ships with their company name and associated rooms */
SELECT cruiseship.cruiseShipLine, COUNT(room.roomID) AS room_count 
FROM cruiseship
LEFT JOIN room ON cruiseship.cruiseShipID = room.cruiseShipID 
GROUP BY cruiseship.cruiseShipLine;

/* select all customers with their contact information, tour program IDs, and payment dates */
SELECT customer.customerID AS 'Customer ID',customer.customerName AS 'Customer Name',
customer.phoneNumber AS 'Phone Number',tourprogram.tourProgramID AS 'Tour Program ID',paymentrecord.paymentRecordDate AS 'Payment Date'
FROM customer
JOIN ticket ON customer.customerID = ticket.customerID
JOIN tourprogram ON ticket.tourProgramID = tourprogram.tourProgramID
LEFT JOIN paymentrecord ON customer.paymentRecordID = paymentrecord.paymentRecordID
ORDER BY customer.customerName;



/*Views*/
/*Create View */
CREATE VIEW CustomerTourDetails AS
SELECT customer.customerID AS 'Customer ID',customer.customerName AS 'Customer Name',
customer.phoneNumber AS 'Phone Number',tourprogram.tourProgramID AS 'Tour Program ID',paymentrecord.paymentRecordDate AS 'Payment Date'
FROM customer
JOIN ticket ON customer.customerID = ticket.customerID
JOIN tourprogram ON ticket.tourProgramID = tourprogram.tourProgramID
LEFT JOIN paymentrecord ON customer.paymentRecordID = paymentrecord.paymentRecordID;

SELECT 
    'Tour Program ID', 
    MAX('Payment Date') AS 'Latest Payment Date'
FROM 
    CustomerTourDetails
GROUP BY 
    'Tour Program ID'
HAVING 
    COUNT('Customer ID') > 1;

SELECT * FROM CustomerTourDetails;





/*Report*/
/* select all customers with their tour program ID and payment date, sorted by customer ID */
SELECT customer.customerID AS 'Customer ID',customer.customerName AS 'Customer Name',
tourprogram.tourProgramID AS 'Tour Program ID',paymentrecord.paymentRecordDate AS 'Payment Date'
FROM customer
JOIN ticket ON customer.customerID = ticket.customerID
JOIN tourprogram ON ticket.tourProgramID = tourprogram.tourProgramID
LEFT JOIN paymentrecord ON customer.paymentRecordID = paymentrecord.paymentRecordID
ORDER BY customer.customerID ASC ;

/* select all cruise ship companies with their cruise ship lines and associated room IDs */
SELECT cruiseshipcompany.cruiseShipCompanyName AS 'Cruise Ship Company',cruiseship.cruiseShipLine AS 'Cruise Ship Line',room.roomID AS 'Room ID'
FROM cruiseship
JOIN cruiseshipcompany ON cruiseship.cruiseShipID = cruiseshipcompany.cruiseShipID
LEFT JOIN room ON cruiseship.cruiseShipID = room.cruiseShipID
ORDER BY cruiseshipcompany.cruiseShipCompanyName, cruiseship.cruiseShipLine;

