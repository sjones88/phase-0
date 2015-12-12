[one-to-one schema](https://github.com/sjones88/phase-0/blob/master/week-8/imgs/one-to-one_schema.png)
This is a one-to-one relationship because a company generally has only one CTO (chief technology officer), if it has a CTO at all. Many companies don't have a CTO, so the value of the CTO_id field could be null.

[grocery list schema](https://github.com/sjones88/phase-0/blob/master/week-8/imgs/grocery_list_schema.png)

### Reflection
#### What is a one-to-one database?
In a one-to-one database, two entities are associated via their sharing of one and only one attribute. In other words, one column in Table A corresponds to one and only one row in Table B.

#### When would you use a one-to-one database? (Think generally, not in terms of the example you created).
A one-to-one database has limited utility when a given attribute is common among entries in the database. However, if an attribute is likely to have many empty fields, it is more efficient to create a new table with a one-to-one relationship to represent that attribute.

#### What is a many-to-many database?
A many-to-many database is one in which many table attributes are associated with many attributes in another table.

#### When would you use a many-to-many database? (Think generally, not in terms of the example you created)
You would use a many-to-many database to model the association between two complex entities, where many of the entries in one table are associated with many of the entries in another table.

#### What is confusing about database schemas? What makes sense?
The utility of one-to-one databases is a bit abstract still because it seems to revolve around computing efficiency of database queries.