--File Number 2: ensuring all the Tables Run Successfully and creating a Crowd_Funding Masterfile Joining all 4 Databases

-- Item 2: Checking all the tables have the right data by running one at a time
-- Note: Please run this section Line Item By Line Item
select * from campaign
select * from category
select * from contacts
select * from subcategory


-- Item 3: Running Query across the four different tables
-- Note: Please run this section Individually
CREATE TABLE merged_data_2 AS
SELECT c.contact_id, c.first_name, c.last_name, c.email,
       ca.category_id, ca.category,
       s.subcategory_id, s.subcategory,
       cm.cf_id, cm.company_name, cm.description, cm.goal, cm.pledged,
       cm.outcome, cm.backers_count, cm.country, cm.currency,
       cm.launched_date, cm.end_date
FROM campaign cm
JOIN contacts c ON cm.contact_id = c.contact_id
JOIN category ca ON cm.category_id = ca.category_id
JOIN subcategory s ON cm.subcategory_id = s.subcategory_id;

-- Item 4: Ensuring Table Stored the Data
-- Note: Please run this section Line Item By Line Item
select * from merged_data_2