# Instructions

## 1 - Create a github account

Goto [github](https://github.com) page and create a new account and sigin.

## 2 - Fork this repository

Use the fork feature to create a clone of the repository on your own github account.

## 3 - Clone your forked repository

Use the git CLI to clone the forked repository to your machine.

## 4 - Construct your custom image

Construct your own image to your database container.

Follow these steps:

* Search inside of the [demo/settings.py](https://github.com/unicefindia/demo/blob/master/demo/settings.py) of this project for the database configurations and take a note about:

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

## 5 - Using your custom image

After construct your custom image, it's time to use it.

You can use the commands **docker create** followed by **docker start** to create and start your container, respectively.

## 6 - Run the migrations

The migrations are responsible by translate your models code, into another type of special code, that will be interpreted and translated to the database language(SQL).

If you will not maintain your code sincronized with your database, you will get some errors in your application.

## 7 - Dockerize your application

Now we need to convert our application into a container. This can be done creating a new Dockerfile, on the same way we done on the first step. Remember, you can have how many Dockerfiles you need, the only requirement here is, each image needs your own Dockerfile.

Tip: You can use **app.Dockerfile** as a name for your application Dockerfile.

## 8 - Create your own multi-container application

Now we need to create our [**docker-compose.yml**](https://docs.docker.com/compose/) file to describe and coordinates our infrastructure.

Remember, the name of the services is used as the hostname of your container and you can use it to exchange data between different containers. For example, in our case we can use these hostnames to permits our demo application to communicates with our database container. When we use docker-compose, he always creates a new network. Use it in your favor.

## 9 - The last challenge

Commit all files that you create during all this tasks and make a push.

## 10 - The extra challenge

Create a new container using the portainer and explore this awesome tool.
