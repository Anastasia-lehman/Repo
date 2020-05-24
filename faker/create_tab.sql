--------
BEGIN;
---------
------------------------------------SUPPLIER------------------------------------
---------

CREATE TABLE supplier (
	id integer PRIMARY KEY,
	firm varchar(255),
    addres varchar(100) NOT NULL UNIQUE,
	phone varchar(20) NOT NULL,
	email varchar(100) NOT NULL UNIQUE
);

INSERT INTO supplier (id, firm, addres, phone, email)
            VALUES
            (DEFAULT, 'Reichel, Kozey and Barrows', '1-500-108-6242 x5245', 'Dante.Prohaska50@yahoo.com'),
            (DEFAULT, 'Kunde and Sons', '139-924-9420', 'Brock.Thiel@hotmail.com'),
            (DEFAULT, 'MacGyver, Cassin and Renner', '1-840-574-3276 x0286', 'Chaya39@gmail.com'),
            (DEFAULT, 'Russel Group', '(201) 135-9999 x801', 'Adolph56@gmail.com'),
            (DEFAULT, 'Bogisich LLC', '726-352-9784', 'Abbigail91@hotmail.com'),
            (DEFAULT, 'Dare Group', '(046) 945-9512 x4307', 'Arianna_Cruickshank66@gmail.com'),
            (DEFAULT, 'Hand - Wilkinson', '880.067.0282 x14574', 'Eloy_DuBuque20@gmail.com'),
            (DEFAULT, 'Romaguera, Champlin and Hilll', '103-490-2394', 'Berry17@hotmail.com'),
            (DEFAULT, 'Koss LLC', '925-871-0715 x565', 'Clifford83@gmail.com'),
            (DEFAULT, 'Nitzsche - Nienow', '903-137-9853', 'Birdie.Stokes@gmail.com');



---------
------------------------------------MARKET-----------------------
---------

CREATE TABLE market (
	id integer PRIMARY KEY,
	name varchar(255) NOT NULL,
	town varchar(100) NOT NULL,
	street varchar(100) NOT NULL,
	house varchar(20) NOT NULL,
    open_date varchar(100) NOT NULL,
	close_date varchar(100),
);

INSERT INTO market (id, name, town, street, house, open_date, close_date)
            VALUES
            (DEFAULT, 'John', 'Cartwrightfurt', 'Guiseppe Hollow', 52, '2013-07-14T06:11:40.386Z', '2016-10-17T02:19:53.922Z'),
            (DEFAULT, 'Deven', 'Lake Collin', 'Gleason Forge', 75, '2010-08-09T12:22:10.578Z', '2014-06-11T10:43:58.681Z'),
            (DEFAULT, 'Amari', 'Elisabethside', 'Dino Streets', 70, '2016-01-31T14:56:27.815Z', '2011-09-08T09:12:16.036Z'),
            (DEFAULT, 'Tyrique', 'West Dejonland', 'Waters Course', 71, '2019-11-20T08:29:51.504Z', '2015-12-18T19:57:03.342Z'),
            (DEFAULT, 'Rosario', 'North Tremainebury', 'Ullrich Lights', 68, '2013-05-03T02:41:56.718Z', '2015-07-15T16:37:33.384Z'),
            (DEFAULT, 'Janelle', 'Bodemouth', 'Malvina Course', 25, '2014-09-17T04:00:20.795Z', '2012-04-09T09:43:25.397Z'),
            (DEFAULT, 'Juston', 'Rosenbaumport', 'Borer Landing', 5, '2014-07-25T09:06:04.615Z', '2013-10-19T03:00:13.551Z'),
            (DEFAULT, 'Benton', 'Jeffryshire', 'Boyle Tunnel', 12, '2015-12-23T07:55:14.661Z', '2020-01-15T15:51:51.108Z'),
            (DEFAULT, 'Pauline', 'South Shanelberg', 'Keanu Lodge', 94, '2017-02-25T03:47:01.907Z', '2014-05-21T02:51:34.822Z'),
            (DEFAULT, 'Rex', 'Cedrickfort', 'Keara Meadow', 36, '2017-03-18T04:52:14.324Z', '2015-05-11T02:11:41.576Z');


---------
------------------------------------PRODUCT------------------------------------
---------

CREATE TABLE product (
	id integer PRIMARY KEY,
    special_discount_id integer REFERENCES special_discount,
	name varchar(255) NOT NULL,
	quality varchar(255) NOT NULL,
	count_in_storage varchar(500) NOT NULL,
	description varchar(200)
);


INSERT INTO product (id, name, quality, count_in_storage, description)
             VALUES
            (DEFAULT, 'Awesome Fresh Cheese', 'Sleek', 152, 'Towels'),
            (DEFAULT, 'Tasty Wooden Bacon', 'Unbranded', 71, 'Chips'),
            (DEFAULT, 'Intelligent Soft Tuna', 'Sleek', 256, 'Sausages'),
            (DEFAULT, 'Gorgeous Plastic Towels', 'Fantastic', 440, 'Bike'),
            (DEFAULT, 'Fantastic Frozen Pizza', 'Intelligent', 479, 'Gloves'),
            (DEFAULT, 'Ergonomic Fresh Chips', 'Incredible', 39, 'Table'),
            (DEFAULT, 'Sleek Rubber Car', 'Fantastic', 469, 'Shoes'),
            (DEFAULT, 'Refined Concrete Fish', 'Small', 482, 'Computer'),
            (DEFAULT, 'Handcrafted Fresh Shoes', 'Handmade', 240, 'Chair'),
            (DEFAULT, 'Tasty Granite Chicken', 'Practical', 368, 'Table');

---------
------------------------------------YELLOW_PRICE------------------------------------
---------

CREATE TABLE yellow_price (
	id integer PRIMARY KEY,
	individual varchar(255) NOT NULL,
	public varchar(255) NOT NULL,
	sum_price varchar(255) NOT NULL
);

INSERT INTO yellow_price (id, individual, public, sum_price)
            VALUES
            (DEFAULT, '594.00', '495.00', '964.00'),
            (DEFAULT, '640.00', '576.00', '938.00'),
            (DEFAULT, '935.00', '388.00', '456.00'),
            (DEFAULT, '329.00', '921.00', '456.00'),
            (DEFAULT, '519.00', '299.00', '476.00'),
            (DEFAULT, '588.00', '460.00', '569.00'),
            (DEFAULT, '547.00', '364.00', '699.00'),
            (DEFAULT, '843.00', '373.00', '702.00'),
            (DEFAULT, '741.00', '324.00', '866.00'),
            (DEFAULT, '792.00', '469.00', '820.00');

---------
------------------------------------PRICE------------------------------------
---------

CREATE TABLE price (
	id integer PRIMARY KEY,
    price_before varchar(255) NOT NULL,
	price_after varchar(255) NOT NULL,
);

INSERT INTO price (id, price_before, price_after)
             VALUES
(DEFAULT, '441.00', '256.00'),
(DEFAULT, '426.00', '789.00'),
(DEFAULT, '412.00', '874.00'),
(DEFAULT, '472.00', '98.00'),
(DEFAULT, '460.00', '234.00'),
(DEFAULT, '423.00', '457.00'),
(DEFAULT, '937.00', '853.00'),
(DEFAULT, '691.00', '434.00'),
(DEFAULT, '422.00', '823.00'),
(DEFAULT, '444.00', '207.00'),

---------
------------------------------------DISCOUNT_CARD------------------------------------
---------

CREATE TABLE discount_card (
	id integer PRIMARY KEY,
	card_number varchar(255) NOT NULL UNIQUE
);

INSERT INTO discount_card (id, card_number)
            VALUES
            (DEFAULT, 230273),
            (DEFAULT, 48682),
            (DEFAULT, 364695),
            (DEFAULT, 490625),
            (DEFAULT, 643349),
            (DEFAULT, 567670),
            (DEFAULT, 478654),
            (DEFAULT, 453971),
            (DEFAULT, 933566),
            (DEFAULT, 583256);

---------
------------------------------------COSTUMER------------------------------------
---------

CREATE TABLE costumer (
	id integer PRIMARY KEY,
	name varchar(255) NOT NULL,
	surname varchar(255) NOT NULL,
	email varchar(255) NOT NULL UNIQUE,
	phone varchar(255) NOT NULL UNIQUE
);

INSERT INTO costumer (id, name, surname, email, phone)
            VALUES
            (DEFAULT, 'Abshire - Bernier', 'East Leif', 'Fletcher_Miller@hotmail.com', '430-918-5537 x6722'),
            (DEFAULT, 'Wehner, Bruen and Lemke', 'South Darryl', 'Hassan.Eichmann@hotmail.com', '1-505-944-3007 x236'),
            (DEFAULT, 'Gusikowski, Rowe and Leffler', 'West Mohamed', 'Janick2@yahoo.com', '229-318-9626 x469'),
            (DEFAULT, 'Kohler - Kreiger', 'South Cecilemouth', 'Carole_Predovic54@hotmail.com', '398-941-4223'),
            (DEFAULT, 'Rutherford - Buckridge', 'New Roderickview', 'Brenden.Wiegand17@yahoo.com', '(785) 653-9111 x074'),
            (DEFAULT, 'Dach LLC', 'Bernieland', 'Vladimir36@yahoo.com', '919.128.7229'),
            (DEFAULT, 'Quitzon, Bradtke and Sauer', 'Schowalterberg', 'Felicita.Hills78@hotmail.com', '1-370-809-3560'),
            (DEFAULT, 'Koch LLC', 'Forestview', 'Kristian_Sanford@hotmail.com', '(430) 820-0323 x420'),
            (DEFAULT, 'Lindgren, Marquardt and Smitham', 'North Herminia', 'Reanna26@hotmail.com', '113-989-5852 x617'),
            (DEFAULT, 'Olson and Sons', 'Port Roxane', 'Leann.Stehr92@gmail.com', '435-407-1655 x03761');

---------
------------------------------------SPECIAL_DISCOUNT------------------------------------
---------

CREATE TABLE special_discount (
	id integer PRIMARY KEY,
	name varchar(255) NOT NULL,
    description varchar(255)
);

INSERT INTO special_discount (id, name, desctiplion)
            VALUES
            (DEFAULT, 'Strategist Cambridgeshire', 'JSON Money Market Account Berkshire'),
            (DEFAULT, 'transmitter Borders', 'Producer connect'),
            (DEFAULT, 'Interactions', 'Mews'),
            (DEFAULT, 'Home Loan Account navigate New Caledonia', 'extensible'),
            (DEFAULT, 'SMS radical Credit Card Account', 'violet orchid'),
            (DEFAULT, 'Generic user-facing', 'New Taiwan Dollar'),
            (DEFAULT, 'Tuna Buckinghamshire Frozen', 'Valleys technologies Fish'),
            (DEFAULT, 'digital', 'Steel'),
            (DEFAULT, 'AGP multi-byte', 'Junctions Generic Rubber Hat'),
            (DEFAULT, 'regional transitional', 'Personal Loan Account Persevering');

---------
------------------------------------BILL------------------------------------
---------

CREATE TABLE bill (
	id integer PRIMARY KEY,
    market_id integer REFERENCES market,
	create_data varchar(255) NOT NULL,
);

INSERT INTO buy (id, create_data, desctiplion)
            VALUES
            (DEFAULT, '2019-09-01T09:14:48.495Z'),
            (DEFAULT, '2016-09-11T08:38:10.675Z'),
            (DEFAULT, '2017-04-08T13:05:09.482Z'),
            (DEFAULT, '2012-09-22T01:19:27.506Z'),
            (DEFAULT, '2010-08-24T07:34:52.025Z'),
            (DEFAULT, '2011-10-23T22:29:52.382Z'),
            (DEFAULT, '2013-06-09T20:23:51.347Z'),
            (DEFAULT, '2012-02-29T11:10:29.787Z'),
            (DEFAULT, '2020-01-20T05:29:01.104Z'),
            (DEFAULT, '2019-03-05T10:22:01.702Z');


---------
------------------------------------SUPPLY_PRODUCT------------------------------------
---------

CREATE TABLE supply_product (
	id integer PRIMARY KEY,
    supplier_id integer REFERENCES supplier,
    staff_id integer REFERENCES staff,
    market_id integer REFERENCES market,
	count_product varchar(255) NOT NULL,
	price_product varchar(255) NOT NULL
);

INSERT INTO supply_product (id, count_product, price_product)
            VALUES
            (DEFAULT,  357, '296.00'),
            (DEFAULT,  245, '473.00'),
            (DEFAULT,  203, '223.00'),
            (DEFAULT,  415, '567.00'),
            (DEFAULT,  106, '607.00'),
            (DEFAULT,  93, '402.00'),
            (DEFAULT,  480, '856.00'),
            (DEFAULT,  169, '380.00'),
            (DEFAULT,  61, '347.00'),
            (DEFAULT,  162, '170.00');

---------
------------------------------------STAFF------------------------------------
---------

CREATE TABLE staff (
	id integer PRIMARY KEY,
	name varchar(255) NOT NULL,
	surname varchar(255) NOT NULL,
	contacts varchar(255) NOT NULL UNIQUE,
	birth varchar(255) NOT NULL,
    residence_permit varchar(255) NOT NULL UNIQUE,
    timetable varchar(255) NOT NULL
);

INSERT INTO staff (id, name, surname, email, phone)
            VALUES
            (DEFAULT, 'Loyce', 'Emmerich', '738-348-9211 x48495', '2020-05-06', '663 Jamil Burg', 'Tuesday'),
            (DEFAULT, 'Timothy', 'Cormier', '172.412.9434 x6865', '2019-11-03', '63045 Idella Branch', 'Saturday'),
            (DEFAULT, 'Lauren', 'Goodwin', '807-388-2817', '2019-06-26', '053 Klocko Trail', 'Monday'),
            (DEFAULT, 'Wilfredo', 'Emard', '1-938-786-3980', '2019-08-10', '331 Gorczany Roads', 'Tuesday'),
            (DEFAULT, 'Eli', 'Turcotte', '090.333.8798 x174', '2020-01-31', '06839 Rolfson Via', 'Tuesday'),
            (DEFAULT, 'Jaunita', 'Kunde', '931.188.4818', '2019-06-27', '7064 Jonathan Way', 'Monday'),
            (DEFAULT, 'Conner', 'Kuhic', '1-244-848-2029 x703', '2020-04-18', '6040 Clinton Way', 'Wednesday'),
            (DEFAULT, 'Annalise', 'Beatty', '(575) 328-5182', '2020-03-05', '7050 Haley Crossroad', 'Monday'),
            (DEFAULT, 'Bessie', 'Reynolds', '522-620-0157', '2019-09-13', '4242 Myron Roads', 'Monday'),
            (DEFAULT, 'Pink', 'Goyette', '303-713-7296 x729', '2020-01-04', '0555 Tillman Highway', 'Saturday');

---------
------------------------------------DIVISION------------------------------------
---------

CREATE TABLE division (
	id integer PRIMARY KEY,
    department_id integer REFERENCES department,
	name varchar(255) NOT NULL,
	description varchar(255),
	start_date varchar(255) NOT NULL
);

INSERT INTO division (id, create_data, desctiplion)
            VALUES
            (DEFAULT, '2017-06-29T14:10:20.341Z', 'hybrid', 'Grass-roots actuating circuit'),
            (DEFAULT, '2015-10-10T18:57:16.407Z', 'uniform', 'Advanced holistic success'),
            (DEFAULT, '2017-02-03T06:11:35.004Z', 'reciprocal', 'Innovative logistical projection'),
            (DEFAULT, '2018-01-31T17:06:50.979Z', 'demand-driven', 'Synergistic systematic website'),
            (DEFAULT, '2016-10-24T14:59:32.588Z', 'content-based', 'Robust multi-state protocol'),
            (DEFAULT, '2015-12-03T19:10:30.202Z', 'exuding', 'Devolved human-resource help-desk'),
            (DEFAULT, '2015-12-19T17:13:51.876Z', 'responsive', 'Secured composite superstructure'),
            (DEFAULT, '2016-04-07T03:45:00.286Z', 'neutral', 'User-centric modular infrastructure'),
            (DEFAULT, '2017-01-16T09:46:36.133Z', 'object-oriented', 'Inverse grid-enabled firmware'),
            (DEFAULT, '2012-11-16T01:56:08.587Z', 'client-driven', 'Inverse upward-trending open system');

---------
------------------------------------DEPARTMENT------------------------------------
---------

CREATE TABLE department (
	id integer PRIMARY KEY,
	name varchar(255) NOT NULL
);

INSERT INTO department (id, name)
            VALUES
            (DEFAULT, 'asymmetric'),
            (DEFAULT, 'non-volatile'),
            (DEFAULT, 'leading edge'),
            (DEFAULT, 'composite'),
            (DEFAULT, 'exuding'),
            (DEFAULT, 'local'),
            (DEFAULT, 'zero tolerance'),
            (DEFAULT, '24 hour'),
            (DEFAULT, 'bottom-line'),
            (DEFAULT, 'multi-tasking');


CREATE TABLE staff_division (
    division_id integer REFERENCES division,
    staff_id integer REFERENCES staff
);


CREATE TABLE staff_market (
    market_id integer REFERENCES market,
    staff_id integer REFERENCES staff
);

CREATE TABLE product_market (
    market_id integer REFERENCES market,
    product_id integer REFERENCES product
);

CREATE TABLE product_yellow_price (
    yellow_price_id integer REFERENCES yellow_price,
    product_id integer REFERENCES product
);

CREATE TABLE product_price (
    price_id integer REFERENCES price,
    product_id integer REFERENCES product
);

CREATE TABLE discount_card_special_discount (
    special_discount_id integer REFERENCES special_discount,
    discount_card_id integer REFERENCES  discount_card
);

CREATE TABLE discount_card_costumer (
    costumer_id integer REFERENCES costumer,
    discount_card_id integer REFERENCES  discount_card
);

CREATE TABLE bill_costumer (
    costumer_id integer REFERENCES costumer,
    bill_id integer REFERENCES  bill
);

---------
COMMIT;