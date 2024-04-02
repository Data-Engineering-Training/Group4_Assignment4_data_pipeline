--1. How many customers are there in total?
SELECT COUNT(*) AS total_customers FROM public.company_customers;

--2. How many customers prefer communication via email?
SELECT COUNT(*) AS email_preference_customers 
FROM public.company_customers 
WHERE communication_method = 'email';

--3. What is the average number of customers per company?
SELECT AVG(customer_count) AS avg_customers_per_company
FROM (
    SELECT company, COUNT(*) AS customer_count 
    FROM public.company_customers 
    GROUP BY company
) AS subquery;

--4. Which companies have more than 5000 customers with email communication method?
SELECT company 
FROM public.company_customers 
WHERE communication_method = 'email' 
GROUP BY company 
HAVING COUNT(*) > 1;


--5. List all customers who prefer the app for customer preference and are in GCB
SELECT * 
FROM public.company_customers 
WHERE customer_preference = 'app' AND company = 'gcb';

--6. What are the top 5 most common transaction activities?
SELECT transaction_activity, COUNT(*) AS activity_count 
FROM public.company_customers 
GROUP BY transaction_activity 
ORDER BY activity_count DESC 
LIMIT 5;

--7. How many unique email domains are there among the customers?
SELECT COUNT(DISTINCT SUBSTRING(email FROM POSITION('@' IN email) + 1)) AS unique_email_domains 
FROM public.company_customers;

--8. What percentage of customers have a phone number listed?
SELECT (COUNT(phone_number) * 100.0 / COUNT(*)) AS phone_number_percentage 
FROM public.company_customers 
WHERE phone_number IS NOT NULL;

--9. List all companies and the number of customers who prefer 'website' as their customer preference, sorted by the number of customers in descending order.
SELECT company, COUNT(*) AS website_preference_customers 
FROM public.company_customers 
WHERE customer_preference = 'website' 
GROUP BY company 
ORDER BY website_preference_customers DESC;

--10. Find the company with the highest number of customers with email as preferred communication.
SELECT company,count(cust_name) as customers
FROM public.company_customers 
WHERE communication_method = 'email'
GROUP BY company 
ORDER BY customers DESC 
LIMIT 1;




