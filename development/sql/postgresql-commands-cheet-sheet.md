PostgreSQL commands
-------------------

Access the PostgreSQL server from psql with a specific user:

`psql -U [username];`

For example, the following command uses the `postgres` user to access the PostgreSQL database server:

`psql -U postgres`

Connect to a specific database:

`\c database_name;`

For example, the following command connects to the `dvdrental` database:

`\c dvdrental; You are now connected to database "dvdrental" as user "postgres".`

To quit the psql:

`\q`

List all databases in the PostgreSQL database server

`\l`

List all schemas:

`\dn`

List all stored procedures and functions:

`\df`

List all views:

`\dv`

Lists all tables in a current database.

`\dt`

Or to get more information on tables in the current database:

`\dt+`

Get detailed information on a table.

`\d+ table_name`

Show a stored procedure or function code:

`\df+ function_name`

Show query output in the pretty-format:

`\x`

List all users:

`\du`

Create a new role:

`CREATE ROLE role_name;`

Create a new role with a `username` and `password`:

`CREATE ROLE username NOINHERIT LOGIN PASSWORD password;`

Change role for the current session to the `new_role`:

`SET ROLE new_role;`

Allow `role_1` to set its role as `role_2:`

`GRANT role_2 TO role_1;`

Managing databases
------------------

Create a new database:

`CREATE DATABASE [IF NOT EXISTS] db_name;`

Delete a database permanently:

`DROP DATABASE [IF EXISTS] db_name;`

Managing tables
---------------

Create a new table or a temporary table

`CREATE [TEMP] TABLE [IF NOT EXISTS] table_name(    pk SERIAL PRIMARY KEY,    c1 type(size) NOT NULL,    c2 type(size) NULL,    ... );`

Add a new column to a table:

`ALTER TABLE table_name ADD COLUMN new_column_name TYPE;`

Drop a column in a table:

`ALTER TABLE table_name DROP COLUMN column_name;`

Rename a column:

`ALTER TABLE table_name RENAME column_name TO new_column_name;`

Set or remove a default value for a column:

`ALTER TABLE table_name ALTER COLUMN [SET DEFAULT value | DROP DEFAULT]`

Add a primary key to a table.

`ALTER TABLE table_name ADD PRIMARY KEY (column,...);`

Remove the primary key from a table.

`ALTER TABLE table_name  DROP CONSTRAINT primary_key_constraint_name;`

Rename a table.

`ALTER TABLE table_name RENAME TO new_table_name;`

Drop a table and its dependent objects:

`DROP TABLE [IF EXISTS] table_name CASCADE;`

Managing views
--------------

Create a view:

`CREATE OR REPLACE view_name AS query;`

Create a recursive view:

`CREATE RECURSIVE VIEW view_name(column_list) AS SELECT column_list;`

Create a materialized view:

`CREATE MATERIALIZED VIEW view_name AS query WITH [NO] DATA;`

Refresh a materialized view:

`REFRESH MATERIALIZED VIEW CONCURRENTLY view_name;`

Drop a view:

`DROP VIEW [ IF EXISTS ] view_name;`

Drop a materialized view:

`DROP MATERIALIZED VIEW view_name;`

Rename a view:

`ALTER VIEW view_name RENAME TO new_name;`

Managing indexes
----------------

Creating an index with the specified name on a table

`CREATE [UNIQUE] INDEX index_name ON table (column,...)`



Removing a specified index from a table

`DROP INDEX index_name;`



Querying data from tables
-------------------------

Query all data from a table:

`SELECT * FROM table_name;`



Query data from specified columns of all rows in a table:

`SELECT column_list FROM table;`



Query data and select only unique rows:

`SELECT DISTINCT (column) FROM table;`



Query data from a table with a filter:

`SELECT * FROM table WHERE condition;`



Assign an alias to a column in the result set:

`SELECT column_1 AS new_column_1, ... FROM table;`



Query data using the `LIKE` operator:

`SELECT * FROM table_name WHERE column LIKE '%value%'`



Query data using the `BETWEEN` operator:

`SELECT * FROM table_name WHERE column BETWEEN low AND high;`

Query data using the `IN` operator:

`SELECT * FROM table_name WHERE column IN (value1, value2,...);`



Constrain the returned rows with the `LIMIT` clause:

`SELECT * FROM table_name LIMIT limit OFFSET offset ORDER BY column_name;`



Query data from multiple using the [inner join](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-inner-join/), [left join](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-left-join/), [full outer join](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-full-outer-join/), [cross join](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-cross-join/) and [natural join](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-natural-join/):

`SELECT *  FROM table1 INNER JOIN table2 ON conditions`

`SELECT *  FROM table1 LEFT JOIN table2 ON conditions`

`SELECT *  FROM table1 FULL OUTER JOIN table2 ON conditions`

`SELECT *  FROM table1 CROSS JOIN table2;`

`SELECT *  FROM table1 NATURAL JOIN table2;`

Return the number of rows of a table.

`SELECT COUNT (*) FROM table_name;`

Sort rows in ascending or descending order:

`SELECT select_list FROM table ORDER BY column ASC [DESC], column2 ASC [DESC],...;`



Group rows using `GROUP BY` clause.

`SELECT * FROM table GROUP BY column_1, column_2, ...;`



Filter groups using the `HAVING` clause.

`SELECT * FROM table GROUP BY column_1 HAVING condition;`

Set operations
--------------

Combine the result set of two or more queries with `UNION` operator:

`SELECT * FROM table1 UNION SELECT * FROM table2;`

Minus a result set using operator:

`SELECT * FROM table1 EXCEPT SELECT * FROM table2;`

Get intersection of the result sets of two queries:

`SELECT * FROM table1 INTERSECT SELECT * FROM table2;`

Modifying data
--------------

Insert a new row into a table:

`INSERT INTO table(column1,column2,...) VALUES(value_1,value_2,...);`

Insert multiple rows into a table:

`INSERT INTO table_name(column1,column2,...) VALUES(value_1,value_2,...),       (value_1,value_2,...),       (value_1,value_2,...)...`

Update data for all rows:

`UPDATE table_name SET column_1 = value_1,     ...;`

Update data for a set of rows specified by a condition in the `WHERE` clause.

`UPDATE table SET column_1 = value_1,     ... WHERE condition;`

Delete all rows of a table:

`DELETE FROM table_name;`

Delete specific rows based on a condition:

`DELETE FROM table_name WHERE condition;`

Performance
-----------

Show the query plan for a query:

`EXPLAIN query;`

Show and execute the query plan for a query:

`EXPLAIN ANALYZE query;`

Collect statistics:

`ANALYZE table_name;`


PostgreSQL Resources

![PostgreSQL Resources](https://www.postgresqltutorial.com/wp-content/themes/evolution/img/right.svg)

![PostgreSQL Resources](data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%2032%2032%22%3E%3C/svg%3E)

](https://www.postgresqltutorial.com/postgresql-resources/ "PostgreSQL Resources")

try { fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function(response) { return true; }).catch(function(e) { var carbonScript = document.createElement("script"); carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CE7D653M&placement=wwwpostgresqltutorialcom"; carbonScript.id = "\_carbonads\_js"; document.getElementById("carbon-block").appendChild(carbonScript); }); } catch (error) { console.log(error); }

Search for:  

PostgreSQL Quick Start
----------------------

*   [What is PostgreSQL?](https://www.postgresqltutorial.com/postgresql-getting-started/what-is-postgresql/ "What is PostgreSQL")
*   [PostgreSQL Sample Database](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/ "PostgreSQL Sample Database")
*   [Install PostgreSQL on Windows](https://www.postgresqltutorial.com/postgresql-getting-started/install-postgresql/)
*   [Connect to Database](https://www.postgresqltutorial.com/postgresql-getting-started/connect-to-postgresql-database/ "Connect to PostgreSQL Database")
*   [Load Sample Database](https://www.postgresqltutorial.com/postgresql-getting-started/load-postgresql-sample-database/ "Load Postgresql Sample Database")
*   [Install PostgreSQL on macOS](https://www.postgresqltutorial.com/postgresql-getting-started/install-postgresql-macos/ "Install PostgreSQL macOS")
*   [Install PostgreSQL on Linux](https://www.postgresqltutorial.com/postgresql-getting-started/install-postgresql-linux/ "Install PostgreSQL Linux")

window.googletag = window.googletag || {cmd: \[\]}; googletag.cmd.push(function() { googletag.defineSlot('/21849154601,22306944310/Ad.Plus-300x250', \[\[300, 250\], \[250, 250\], \[200, 200\]\], 'Ad.Plus-300x250-1').addService(googletag.pubads()) .setTargeting('site', \['postgresqltutorial.com'\]); googletag.enableServices(); googletag.display('Ad.Plus-300x250-1'); });

PostgreSQL Fundamentals
-----------------------

*   [SELECT](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-select/ "PostgreSQL SELECT")
*   [Column Aliases](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-column-alias/ "PostgreSQL Column Alias")
*   [ORDER BY](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-order-by/ "PostgreSQL ORDER BY")
*   [SELECT DISTINCT](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-select-distinct/ "PostgreSQL SELECT DISTINCT")
*   [WHERE](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-where/ "PostgreSQL WHERE")
*   [LIMIT](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-limit/)
*   [FETCH](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-fetch/ "PostgreSQL FETCH")
*   [IN](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-in/ "PostgreSQL IN")
*   [BETWEEN](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-between/ "PostgreSQL Between")
*   [LIKE](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-like/ "PostgreSQL LIKE")
*   [IS NULL](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-is-null/ "PostgreSQL IS NULL")
*   [Table Aliases](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-alias/ "PostgreSQL Table Aliases")
*   [Joins](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-joins/ "PostgreSQL Joins")
*   [INNER JOIN](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-inner-join/ "PostgreSQL Inner Join")
*   [LEFT JOIN](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-left-join/ "PostgreSQL Left Join")
*   [RIGHT JOIN](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-right-join/ "PostgreSQL RIGHT JOIN")
*   [SELF-JOIN](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-self-join/ "PostgreSQL Self-Join")
*   [FULL OUTER JOIN](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-full-outer-join/ "PostgreSQL FULL OUTER JOIN")
*   [Cross Join](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-cross-join/ "PostgreSQL Cross Join By Example")
*   [Natural Join](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-natural-join/ "PostgreSQL NATURAL JOIN Explained By Examples")
*   [GROUP BY](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-group-by/ "PostgreSQL Group By")
*   [UNION](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-union/ "PostgreSQL Union")
*   [INTERSECT](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-intersect/ "PostgreSQL INTERSECT Operator")
*   [HAVING](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-having/ "PostgreSQL Having")
*   [GROUPING SETS](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-grouping-sets/ "PostgreSQL GROUPING SETS")
*   [CUBE](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-cube/ "PostgreSQL CUBE")
*   [ROLLUP](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-rollup/ "PostgreSQL ROLLUP")
*   [Subquery](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-subquery/ "PostgreSQL Subquery")
*   [ANY](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-any/)
*   [ALL](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-all/)
*   [EXISTS](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-exists/ "PostgreSQL EXISTS")
*   [INSERT](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-insert/ "PostgreSQL INSERT")
*   [INSERT Multiple Rows](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-insert-multiple-rows/ "PostgreSQL INSERT Multiple Rows")
*   [UPDATE](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-update/ "PostgreSQL UPDATE")
*   [UPDATE Join](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-update-join/)
*   [DELETE](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-delete/ "PostgreSQL DELETE")
*   [DELETE Join](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-delete-join/ "PostgreSQL DELETE JOIN")
*   [Upsert](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-upsert/ "PostgreSQL Upsert")

Managing Tables
---------------

*   [PostgreSQL Data Types](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-data-types/)
*   [Create Table](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-create-table/ "PostgreSQL Create Table")
*   [Select Into](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-select-into/ "PostgreSQL SELECT INTO")
*   [Create Table As](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-create-table-as/ "PostgreSQL CREATE TABLE AS")
*   [SERIAL](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-serial/ "Using PostgreSQL SERIAL To Create Auto-increment Column")
*   [Sequences](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-sequences/ "PostgreSQL Sequences")
*   [Identity Column](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-identity-column/ "PostgreSQL Identity Column")
*   [Alter Table](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-alter-table/ "PostgreSQL ALTER TABLE")
*   [Rename Table](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-rename-table/ "PostgreSQL Rename Table")
*   [Add Column](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-add-column/ "PostgreSQL ADD COLUMN")
*   [Drop Column](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-drop-column/ "PostgreSQL DROP COLUMN")
*   [Change Column’s Data Type](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-change-column-type/ "PostgreSQL Change Column Type")
*   [Rename Column](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-rename-column/ "PostgreSQL Rename Column")
*   [Drop Table](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-drop-table/ "PostgreSQL DROP TABLE")
*   [Temporary Table](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-temporary-table/ "PostgreSQL Temporary Tables")
*   [Truncate Table](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-truncate-table/ "PostgreSQL TRUNCATE TABLE")

Database Constraints
--------------------

*   [Primary Key](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-primary-key/ "PostgreSQL Primary Key")
*   [Foreign Key](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-foreign-key/ "PostgreSQL Foreign Key")
*   [CHECK Constraint](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-check-constraint/ "PostgreSQL CHECK Constraint")
*   [UNIQUE Constraint](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-unique-constraint/ "PostgreSQL UNIQUE Constraint")
*   [NOT NULL Constraint](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-not-null-constraint/ "PostgreSQL Not-Null Constraint")

PostgreSQL Data Types
---------------------

*   [Boolean](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-boolean/ "PostgreSQL Boolean Data Type with Practical Examples")
*   [CHAR, VARCHAR, and TEXT](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-char-varchar-text/ "Character Types")
*   [NUMERIC](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-numeric/ "PostgreSQL NUMERIC")
*   [Integer](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-integer/ "A Look At Various PostgreSQL Integer Data Types")
*   [SERIAL](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-serial/ "Using PostgreSQL SERIAL To Create Auto-increment Column")
*   [DATE](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-date/ "PostgreSQL Date")
*   [TIMESTAMP](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-timestamp/ "PostgreSQL TIMESTAMP")
*   [Interval](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-interval/ "PostgreSQL Interval Data Type")
*   [TIME](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-time/ "PostgreSQL TIME")
*   [UUID](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-uuid/ "The Basics Of PostgreSQL UUID Data Type")
*   [JSON](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-json/ "PostgreSQL JSON")
*   [HSTORE](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-hstore/ "PostgreSQL HSTORE")
*   [Array](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-array/ "PostgreSQL Array")
*   [User-defined Data Types](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-user-defined-data-types/ "A Look at PostgreSQL User-defined Data Types")

Conditional Expressions & Operators
-----------------------------------

*   [CASE](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-case/ "PostgreSQL CASE")
*   [COALESCE](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-coalesce/ "PostgreSQL COALESCE")
*   [NULLIF](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-nullif/ "PostgreSQL NULLIF")
*   [CAST](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-cast/ "PostgreSQL CAST")

About PostgreSQLTutorial.com
----------------------------

PostgreSQLTutorial.com provides you with useful PostgreSQL tutorials to help you up-to-date with the latest PostgreSQL features and technologies. All PostgreSQL tutorials are simple, easy-to-follow and practical.