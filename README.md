# Instructions

Construct your own image to your database container. Follow these steps:

    * Search inside of the settings.py of this project for the database configurations and take a note about:

        * the database name;

        * the username used to connect to the database;

        * the password used to connect to the database;

    * Update the file database.sh with the SQL instructions for:

        * [create database](https://www.postgresql.org/docs/9.3/static/sql-createdatabase.html);

        * [create user](https://www.postgresql.org/docs/9.3/static/sql-createuser.html) - remember to set the owner of the database to the user created on the previous step;

        * [grant all privileges](https://www.postgresql.org/docs/9.3/static/sql-grant.html) to the user created on the first step on the database created on second step.

    * Create your Dockerfile: 

        * Uses the image: **mdillon/postgis:9.3-alpine**;

        * Copy the file **database.sh** to directory: **/docker-entrypoint-initdb.d**.

        * build your own image using only docker command and set the tag to unicef/india:YOUR_NAME.
