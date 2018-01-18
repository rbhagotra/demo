# Instructions

## 1 - Construct your custom image

Construct your own image to your database container.

Follow these steps:

* Search inside of the [settings.py](https://github.com/unicefindia/demo/blob/master/demo/settings.py) of this project for the database configurations and take a note about:

  * the database name;

  * the username used to connect to the database;

  * the password used to connect to the database;

* Update the file database.sh with the SQL instructions for:

  * [create database](https://www.postgresql.org/docs/9.3/static/sql-createdatabase.html);

  * [create user](https://www.postgresql.org/docs/9.3/static/sql-createuser.html) - remember to set the owner of the database to the user created on the previous step;

  * [grant all privileges](https://www.postgresql.org/docs/9.3/static/sql-grant.html) to the user created on the first step on the database created on second step.

* Create your Dockerfile:

  Your Dockerfile is very simple, we only need of two instruction, one to set the base image and another to copy a file to your image.

  In case of doubt use the [official documentation](https://docs.docker.com/engine/reference/builder/) of Dockerfile.

  Here the steps needed to put inside your Dockerfile:

  * Uses the image **mdillon/postgis:9.3-alpine** as base image;

  * Copy your local file **database.sh** to directory: **/docker-entrypoint-initdb.d**.

  After create your Dockerfile, the next step is to build your image.

  * Build your custom image using only **docker** command and set the tag to **unicef/india:YOUR_NAME**.

## 2 - Using your custom image

After construct your custom image, it's time to use it.

You can use the commands **docker create** followed by **docker start** to create and start your container, respectively.

## 3 - Run the migrations

The migrations are responsible by translate your models code, into another type of special code, that will be interpreted and translated to the database language(SQL).

If you will not maintain your code sincronized with your database, you will get some errors in your application.
