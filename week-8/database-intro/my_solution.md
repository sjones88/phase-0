1. select * from states;
2. select * from regions;
3. select state_name,population from states;
4. select state_name,population
	from states
	order by population desc;
5. select state_name from states where region_id=7;
6. select state_name,population_density
	from states
	where population_density>50
	order by population_density asc;
7. select state_name from states
	where population>=1000000 and population<=1500000;
8. select state_name,region_id from states
	order by region_id asc;
9. select region_name from regions
	where region_name like '%central%';
10. select regions.region_name,states.state_name
	from regions
	inner join states
	on regions.id=states.region_id
	order by states.region_id asc;

## Reflection
#### What are databases for?
Databases are for storing information.

#### What is a one-to-many relationship?
In a relational database, a single row in one table can be referenced by many rows in a related table. This type of relationship is called one-to-many.

#### What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is a unique field that serves as an identifier in a table row. A foreign key is a field that refers to the primary key in another table.

#### How can you select information out of a SQL database? What are some general guidelines for that?
SQL has a number of statements it accepts that allow you to select and sort information out of a SQL database. The 'select' statement is the most fundamental of those statements. Typing 'select column_name from table_name' will return all of the fields in the given column from within the given table. A SQL statement requires, at a minimum, the 'select' statement, the column name (or the '*' statement, which returns all of the columns in a table), the 'from' statement, and the table name. SQL allows your selections to get more precise from there using the 'where' statement.