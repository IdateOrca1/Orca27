INSERT INTO address (addressID, road, city, zipcode) VALUES
(1, 'Chiang Mai', 'Mai', 121231),
(2, 'Main St', 'Bangkok', 10110),
(3, 'Ocean Ave', 'Phuket', 83100),
(4, 'Harbor Rd', 'Pattaya', 20150),
(5, 'Beachfront Blvd', 'Krabi', 81000),
(6, 'Hilltop Ln', 'Chiang Mai', 50200),
(7, 'Temple St', 'Ayutthaya', 13000),
(8, 'Market Ave', 'Surat Thani', 84000),
(9, 'Coconut Dr', 'Koh Samui', 84320),
(10, 'Sunset Way', 'Hua Hin', 77110),
(11, 'Palm Rd', 'Trang', 92000),
(12, 'Jungle Path', 'Kanchanaburi', 71000),
(13, 'Riverwalk', 'Nakhon Sawan', 60000),
(14, 'Historic Ln', 'Lopburi', 15000),
(15, 'Seaside St', 'Chonburi', 20000),
(16, 'Cultural Way', 'Udon Thani', 41000),
(17, 'Hillcrest Dr', 'Nakhon Ratchasima', 30000),
(18, 'Ancient Blvd', 'Sukhothai', 64000),
(19, 'Lakeside Rd', 'Nong Khai', 43000),
(20, 'Mountainview Dr', 'Mae Hong Son', 58000);

INSERT INTO agency (agencyID, agencyName, tourProgramID, customerID, cruiseShipCompanyID, restaurantID, hotelID, paymentRecordID) VALUES
(1, 'For Thai', 1-20, 1-20, 1-20, 1-20, 1-20, 1-20);
delete from agency where tourProgramID between 1 and 20;


INSERT INTO cruiseship (cruiseShipID, cruiseShipLine, roomID) VALUES
(1, 'Caribbean Explorer', 1),
(2, 'Pacific Voyager', 2),
(3, 'Atlantic Dream', 3),
(4, 'Mediterranean Pearl', 4),
(5, 'Baltic Star', 5),
(6, 'Indian Ocean Breeze', 6),
(7, 'Arctic Sun', 7),
(8, 'Antarctic Quest', 8),
(9, 'Pacific Spirit', 9),
(10, 'Northern Lights', 10),
(11, 'Southern Cross', 11),
(12, 'Equator Adventure', 12),
(13, 'Tropic Breeze', 13),
(14, 'Amazon River Cruise', 14),
(15, 'Gulf Stream', 15),
(16, 'Coral Explorer', 16),
(17, 'Sunset Queen', 17),
(18, 'Misty Isles', 18),
(19, 'Paradise Bay', 19),
(20, 'Lagoon Explorer', 20);

INSERT INTO cruiseshipcompany (cruiseShipCompanyID, cruiseShipCompanyName, cruiseShipID, agencyID, addressID) VALUES
(1, 'Royal Seas', 1, 1, 1),
(2, 'Oceanic Line', 2, 1, 2),
(3, 'Tropical Cruises', 3, 1, 3),
(4, 'Sea Voyager', 4, 1, 4),
(5, 'Marine Bliss', 5, 1, 5),
(6, 'Blue Waters', 6, 1, 6),
(7, 'Coral Line', 7, 1, 7),
(8, 'Wave Crest', 8, 1, 8),
(9, 'Star Marine', 9, 1, 9),
(10, 'Sunshine Cruises', 10, 1, 10),
(11, 'Azure Lines', 11, 1, 11),
(12, 'Paradise Fleet', 12, 1, 12),
(13, 'Ocean Wonders', 13, 1, 13),
(14, 'Voyage Ventures', 14, 1, 14),
(15, 'Harbor Tours', 15, 1, 15),
(16, 'Explorer Lines', 16, 1, 16),
(17, 'Seabreeze Corp', 17, 1, 17),
(18, 'Wave Horizon', 18, 1, 18),
(19, 'Aqua Expeditions', 19, 1, 19),
(20, 'Mermaid Fleet', 20, 1, 20);
delete from criuseShipCompany where cruiseShipCompanyID between 1 and 20;

INSERT INTO customer (customerID, customerName, phoneNumber, paymentRecordID, ticketID) VALUES
(1, 'John Doe', '0801234567', 1, 1),
(2, 'Jane Smith', '0812345678', 2, 2),
(3, 'Mike Johnson', '0823456789', 3, 3),
(4, 'Sara Davis', '0834567890', 4, 4),
(5, 'Linda Brown', '0845678901', 5, 5),
(6, 'James White', '0856789012', 6, 6),
(7, 'Patricia Black', '0867890123', 7, 7),
(8, 'Robert Green', '0878901234', 8, 8),
(9, 'Barbara Adams', '0889012345', 9, 9),
(10, 'Michael Allen', '0890123456', 10, 10),
(11, 'Elizabeth Young', '0811122334', 11, 11),
(12, 'David King', '0822233445', 12, 12),
(13, 'Susan Scott', '0833344556', 13, 13),
(14, 'Joseph Hill', '0844455667', 14, 14),
(15, 'Nancy Wright', '0855566778', 15, 15),
(16, 'Lisa Nelson', '0866677889', 16, 16),
(17, 'Thomas Baker', '0877788990', 17, 17),
(18, 'Karen Gonzalez', '0888899001', 18, 18),
(19, 'Chris Perez', '0899900112', 19, 19),
(20, 'Betty Roberts', '0810022033', 20, 20);

INSERT INTO hotel (hotelID, hotelName, agencyID, addressID) VALUES
(1, 'Ocean View Hotel', 1, 3),
(2, 'Seaside Inn', 1, 2),
(3, 'Palm Breeze Hotel', 1, 4),
(4, 'Lagoon Resort', 1, 5),
(5, 'Sunset Lodge', 1, 6),
(6, 'Island Escape', 1, 7),
(7, 'Mountain Retreat', 1, 8),
(8, 'Tropical Haven', 1, 9),
(9, 'Beachside Villa', 1, 10),
(10, 'Jungle Paradise', 1, 11),
(11, 'Harbor House', 1, 12),
(12, 'Riverbank Suites', 1, 13),
(13, 'Cliffside Hotel', 1, 14),
(14, 'Historic Inn', 1, 15),
(15, 'Coral Reef Hotel', 1, 16),
(16, 'Sand Dunes Resort', 1, 17),
(17, 'Coconut Grove', 1, 18),
(18, 'Marina Bay Inn', 1, 19),
(19, 'Ancient Ruins Lodge', 1, 20),
(20, 'The Lighthouse', 1, 1);
delete from hotel where hotelID between 1 and 20;


INSERT INTO paymentrecord (paymentRecordID, paymentRecordDate, bookingID) VALUES
(1, '2024-10-01', 1),
(2, '2024-10-02', 2),
(3, '2024-10-03', 3),
(4, '2024-10-04', 4),
(5, '2024-10-05', 5),
(6, '2024-10-06', 6),
(7, '2024-10-07', 7),
(8, '2024-10-08', 8),
(9, '2024-10-09', 9),
(10, '2024-10-10', 10),
(11, '2024-10-11', 11),
(12, '2024-10-12', 12),
(13, '2024-10-13', 13),
(14, '2024-10-14', 14),
(15, '2024-10-15', 15),
(16, '2024-10-16', 16),
(17, '2024-10-17', 17),
(18, '2024-10-18', 18),
(19, '2024-10-19', 19),
(20, '2024-10-20', 20);
delete from paymentRecord where paymentRecordID between 1 and 20;


INSERT INTO restaurant (restaurantID, restaurantName, agencyID, addressID) VALUES
(1, 'Seafood Delight', 1, 1),
(2, 'Tropical Bites', 1, 3),
(3, 'Harbor Grille', 1, 4),
(4, 'Ocean Feast', 1, 5),
(5, 'Sunset Diner', 1, 6),
(6, 'Island BBQ', 1, 7),
(7, 'Coral Cafe', 1, 8),
(8, 'Seaside Eats', 1, 9),
(9, 'Marina Bar', 1, 10),
(10, 'Coastal Kitchen', 1, 11),
(11, 'Bay Breeze', 1, 12),
(12, 'Tide Table', 1, 13),
(13, 'Beachside Bistro', 1, 14),
(14, 'Palm Pavilion', 1, 15),
(15, 'The Shell Shack', 1, 16),
(16, 'Wave House', 1, 17),
(17, 'Shoreline Cafe', 1, 18),
(18, 'Cove Restaurant', 1, 19),
(19, 'The Pier Eatery', 1, 20),
(20, 'Sailor’s Galley', 1, 2);
delete from restaurant where restaurantID between 1 and 20;

INSERT INTO ticket (ticketID, tourProgramID, customerID) VALUES
(1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5),
(6, 6, 6), (7, 7, 7), (8, 8, 8), (9, 9, 9), (10, 10, 10),
(11, 11, 11), (12, 12, 12), (13, 13, 13), (14, 14, 14), (15, 15, 15),
(16, 16, 16), (17, 17, 17), (18, 18, 18), (19, 19, 19), (20, 20, 20);

INSERT INTO tourprogram (tourProgramID, agencyID, ticketID) VALUES
(1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 1, 4), (5, 1, 5),
(6, 1, 6), (7, 1, 7), (8, 1, 8), (9, 1, 9), (10, 1, 10),
(11, 1, 11), (12, 1, 12), (13, 1, 13), (14, 1, 14), (15, 1, 15),
(16, 1, 16), (17, 1, 17), (18, 1, 18), (19, 1, 19), (20, 1, 20);
delete from tourprogram where tourProgramID between 1 and 20;

INSERT INTO room (roomID, cruiseShipID) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), 
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10), 
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), 
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20);

INSERT INTO booking (bookingID, paymentRecordID, ticketID, customerID) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 11),
(12, 12, 12, 12),
(13, 13, 13, 13),
(14, 14, 14, 14),
(15, 15, 15, 15),
(16, 16, 16, 16),
(17, 17, 17, 17),
(18, 18, 18, 18),
(19, 19, 19, 19),
(20, 20, 20, 20);



