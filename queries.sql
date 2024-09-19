// Problem 1 - Retrieve a list of appointments including each pet name and the first and last names of the veterinarian assigned to each appointment.
SELECT 
    a.AppointmentID,
    p.PetName,
    p.Species,
    v.FirstName AS VetFirstName,
    v.LastName AS VetLastName,
    a.AppointmentDate,
    a.AppointmentTime
FROM 
    Appointments a
JOIN 
    Pets p ON a.PetID = p.PetID
JOIN 
    Veterinarians v ON a.VeterinarianID = v.VeterinarianID;

// Problem 2 - Calculate the total cost of treatments for each pet by summing up the costs from all associated appointments.
SELECT 
    p.PetName,
    p.Species,
    SUM(t.Cost) AS TotalTreatmentCost
FROM 
    Pets p
JOIN 
    Appointments a ON p.PetID = a.PetID
JOIN 
    Treatments t ON a.AppointmentID = t.AppointmentID
GROUP BY 
    p.PetName, p.Species;

// Problem 3 - Retrieve all pets that have had an appointment with either veterinarian ID 1 or ID 2, and also list all pets that have had treatments costing more than 1500.
SELECT 
    p.PetName
FROM 
    Appointments a
JOIN 
    Pets p ON a.PetID = p.PetID
WHERE 
    a.VeterinarianID IN (1, 2)

UNION

SELECT 
    p.PetName
FROM 
    Treatments t
JOIN 
    Appointments a ON t.AppointmentID = a.AppointmentID
JOIN 
    Pets p ON a.PetID = p.PetID
WHERE 
    t.Cost > 1500;


