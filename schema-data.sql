DROP TABLE Customers;
DROP TABLE Orders;
DROP TABLE Shippings;

CREATE TABLE Owners (
  OwnerID INT auto_increment primary key,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  PhoneNumber VARCHAR(15),
  Email VARCHAR(100),
  Address TEXT
);

CREATE TABLE Pets (
  PetID INT auto_increment primary key,
  OwnerID INT,
  PetName VARCHAR(50),
  Species VARCHAR(50),
  Breed VARCHAR(50),
  DateOfBirth DATE,
  Gender VARCHAR(10)
);

CREATE TABLE Veterinarians (
  VeterinarianID INT auto_increment primary key,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Specialization VARCHAR(100),
  PhoneNumber VARCHAR(15),
  Email VARCHAR(100)
);

CREATE TABLE Appointments (
  AppointmentID INT auto_increment primary key,
  PetID INT,
  VeterinarianID INT,
  AppointmentDate DATE,
  AppointmentTime TIME,
  Status VARCHAR(50)
);

CREATE TABLE Treatments (
  TreatmentID INT auto_increment primary key,
  AppointmentID INT, 
  TreatmentDetails TEXT,
  Cost DECIMAL(10, 2)
);

CREATE TABLE Billing (
  BillID INT auto_increment primary key,
  AppointmentID INT, 
  TotalAmount DECIMAL(10, 2),
  PaymentStatus VARCHAR(50),
  PaymentDate DATE
);

INSERT INTO Owners (OwnerID, FirstName, LastName, PhoneNumber, Email, Address)
VALUES
(1, 'Angela Ann', 'Garcia', '09493969772', 'garciaangela610@gmail.com', '1826 Sampaloc 4 Street'),
(2, 'Jayden Cedrick', 'Garcia', '09263558213', 'jaydencedrickgarcia@gmail.com', '7253 Langkaan Street'),
(3, 'Jaymes Franco', 'Garcia', '09316624982', 'jaymesfrancogarcia@gmail.com', '3251 Manggahan Street'),
(4, 'Hannah Bernice', 'Garcia', '09984883721', 'hannahbernicegarcia@gmail.com', '4128 Sta.Fe Street'),
(5, 'Jayson Carlos', 'Garcia', '09983328368', 'jaysoncarlosgarcia29@gmail.com', '1842 San Nicolas 1 Street'),
(6, 'Radcliffe', 'Griswood', '8597411081', 'rgriswood0@ed.gov', '8384 Goodland Avenue'),
(7, 'Blondell', 'Pencost', '3564378299', 'bpencost1@meetup.com', '45 Straubel Parkway'),
(8, 'Gunner', 'Duplan', '7284590194', 'gduplan2@flavors.me', '9274 Sunfield Plaza'),
(9, 'Evonne', 'Gosdin', '3722927408', 'egosdin3@state.gov', '352 Ryan Terrace'),
(10, 'Murray', 'Summerscales', '8175576713', 'msummerscales4@jiathis.com', '9469 Arapahoe Street');

INSERT INTO Pets (PetID, OwnerID, PetName, Species, Breed, DateOfBirth, Gender)
VALUES
(1, 1, 'Bella', 'Dog', 'Labrador', '2020-05-12', 'Female'),
(2, 2, 'Hiei', 'Cat', 'Puspin', '2019-07-23', 'Male'),
(3, 1, 'Max', 'Dog', 'Beagle', '2021-01-16', 'Male'),
(4, 3, 'Snowy', 'Rabbit', 'Angora', '2022-03-10', 'Female'),
(5, 4, 'Charlie', 'Dog', 'Aspin', '2018-11-01', 'Male'),
(6, 5, 'Zarra', 'Cat', 'Siamese', '2020-06-24', 'Female'),
(7, 3, 'Oreo', 'Rabbit', 'Dutch', '2021-12-11', 'Male'),
(8, 6, 'Rocky', 'Dog', 'Aspin', '2019-04-18', 'Male'),
(9, 7, 'Daisy', 'Dog', 'Poodle', '2021-09-07', 'Female'),
(10, 8, 'Chonk', 'Cat', 'Puspin', '2020-10-05', 'Male');

INSERT INTO Veterinarians (VeterinarianID, FirstName, LastName, Specialization, PhoneNumber, Email)
VALUES
(1, 'Larina', 'Hebron', 'Surgery', '6011794077', 'larina.hebron@vetclinic.com'),
(2, 'Douglas', 'Gabbitas', 'Dermatology', '3409095623', 'douglas.gabbitas@vetclinic.com'),
(3, 'Sarah', 'Rawling', 'General Medicine', '8445044687', 'sarah.rawling@vetclinic.com'),
(4, 'Mike', 'Fiddeman', 'Neurology', '5332566235', 'mike.fiddeman@vetclinic.com'),
(5, 'Anna', 'Raynham', 'Cardiology', '6683356355', 'anna.raynham@vetclinic.com'),
(6, 'David', 'Kohen', 'Dentistry', '1777479212', 'david.kohen@vetclinic.com'),
(7, 'Linda', 'Scotcher', 'Ophthalmology', '2549068616', 'linda.scotcher@vetclinic.com'),
(8, 'James', 'Coslett', 'Surgery', '5196168097', 'james.coslett@vetclinic.com'),
(9, 'Alice', 'Caroline', 'Endocrinology', '5039254121', 'alice.caroline@vetclinic.com'),
(10, 'Henry', 'Phair', 'General Medicine', '2324756699', 'henry.phair@vetclinic.com');

INSERT INTO Appointments (AppointmentID, PetID, VeterinarianID, AppointmentDate, AppointmentTime, Status)
VALUES
(1, 1, 1, '2024-09-15', '10:00:00', 'Completed'),
(2, 2, 2, '2024-09-16', '11:30:00', 'Scheduled'),
(3, 3, 3, '2024-09-18', '09:00:00', 'Completed'),
(4, 4, 6, '2024-09-20', '14:00:00', 'Scheduled'),
(5, 5, 5, '2024-09-22', '12:00:00', 'Completed'),
(6, 6, 3, '2024-09-23', '15:00:00', 'Scheduled'),
(7, 7, 7, '2024-09-24', '16:00:00', 'Scheduled'),
(8, 8, 9, '2024-09-25', '13:00:00', 'Scheduled'),
(9, 9, 10, '2024-09-26', '11:00:00', 'Completed'),
(10, 10, 3, '2024-09-27', '09:30:00', 'Scheduled'),
(11, 2, 4, '2024-09-28', '10:30:00', 'Scheduled'),
(12, 3, 6, '2024-09-29', '12:30:00', 'Completed'),
(13, 4, 3, '2024-09-30', '14:30:00', 'Completed'),
(14, 5, 2, '2024-10-01', '15:00:00', 'Scheduled'),
(15, 6, 5, '2024-10-02', '16:30:00', 'Completed'),
(16, 3, 4, '2024-10-03', '10:00:00', 'Scheduled'),
(17, 8, 3, '2024-10-04', '11:00:00', 'Completed'),
(18, 9, 10, '2024-10-05', '14:30:00', 'Scheduled'),
(19, 1, 3, '2024-10-06', '13:30:00', 'Completed'),
(20, 2, 1, '2024-10-07', '09:30:00', 'Completed'),
(21, 3, 10, '2024-10-08', '11:30:00', 'Completed'),
(22, 9, 6, '2024-10-09', '12:00:00', 'Scheduled'),
(23, 5, 3, '2024-10-10', '15:30:00', 'Completed'),
(24, 6, 4, '2024-10-11', '14:00:00', 'Scheduled'),
(25, 10, 3, '2024-10-12', '16:30:00', 'Completed');


INSERT INTO Treatments (TreatmentID, AppointmentID, TreatmentDetails, Cost)
VALUES
(1, 1, 'Surgery for leg injury', 7500.00),
(2, 2, 'Skin allergy treatment', 1800.00),
(3, 3, 'General health checkup', 1200.00),
(4, 4, 'Dental cleaning', 1000.00),
(5, 5, 'Heartworm prevention', 850.00),
(6, 6, 'Vaccination', 800.00),
(7, 7, 'Eye infection treatment', 2500.00),
(8, 8, 'Spaying', 1500.00),
(9, 9, 'Neutering', 2500.00),
(10, 10, 'Ear infection treatment', 1040.00),
(11, 11, 'Joint pain treatment', 900.00),
(12, 12, 'Dental surgery', 3000.00),
(13, 13, 'X-ray', 800.00),
(14, 14, 'Skin rash treatment', 750.00),
(15, 15, 'Heartworm treatment', 2000.00),
(16, 16, 'Surgery for broken leg', 2000.00),
(17, 17, 'Flea treatment', 500.00),
(18, 18, 'Vaccination booster', 800.00),
(19, 19, 'Digestive problem treatment', 750.00),
(20, 20, 'Tumor removal', 8000.00),
(21, 21, 'Annual checkup', 500.00),
(22, 22, 'Dental extraction', 1000.00),
(23, 23, 'Parvo treatment', 5000.00),
(24, 24, 'Spinal surgery', 9000.00),
(25, 25, 'Vaccination', 800.00);


INSERT INTO Billing (BillID, AppointmentID, TotalAmount, PaymentStatus, PaymentDate)
VALUES
(1, 1, 300.00, 'Paid', '2024-09-15'),
(2, 2, 100.00, 'Unpaid', '2024-09-16'),
(3, 3, 50.00, 'Paid', '2024-09-18'),
(4, 4, 120.00, 'Unpaid', '2024-09-20'),
(5, 5, 80.00, 'Paid', '2024-09-22'),
(6, 6, 60.00, 'Unpaid', '2024-09-23'),
(7, 7, 150.00, 'Unpaid', '2024-09-24'),
(8, 8, 250.00, 'Unpaid', '2024-09-25'),
(9, 9, 200.00, 'Paid', '2024-09-26'),
(10, 10, 90.00, 'Unpaid', '2024-09-27'),
(11, 11, 300.00, 'Paid', '2024-09-28'),
(12, 12, 400.00, 'Paid', '2024-09-29'),
(13, 13, 200.00, 'Paid', '2024-09-30'),
(14, 14, 100.00, 'Unpaid', '2024-10-01'),
(15, 15, 180.00, 'Paid', '2024-10-02'),
(16, 16, 600.00, 'Unpaid', '2024-10-03'),
(17, 17, 75.00, 'Paid', '2024-10-04'),
(18, 18, 65.00, 'Unpaid', '2024-10-05'),
(19, 19, 220.00, 'Paid', '2024-10-06'),
(20, 20, 800.00, 'Paid', '2024-10-07'),
(21, 21, 70.00, 'Paid', '2024-10-08'),
(22, 22, 180.00, 'Unpaid', '2024-10-09'),
(23, 23, 500.00, 'Paid', '2024-10-10'),
(24, 24, 1200.00, 'Unpaid', '2024-10-11'),
(25, 25, 60.00, 'Unpaid', '2024-10-12');
