-- Correct the spelling of "Mimia" to "Miami" for Paige Turner in the Salespersons table
UPDATE Salespersons
SET Store = 'Miami'
WHERE Name = 'Paige Turner';

-- Update email addresses for customers in the Customers table
UPDATE Customers
SET Email = 'ppicasso@gmail.com'
WHERE Name = 'Pablo Picasso';

UPDATE Customers
SET Email = 'lincoln@us.gov'
WHERE Name = 'Abraham Lincoln';

UPDATE Customers
SET Email = 'hello@napoleon.me'
WHERE Name = 'Napoléon Bonaparte';
