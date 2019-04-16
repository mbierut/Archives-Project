# Archives-Project

This is a Spring Boot application for searching articles from an article archive based on my experiences working in a library. Searching can be done by titles, authors, publication names, tags or binders. You can also display a list of all articles or binders available in the archives and view pdf scans if they're available.
It also includes admin options for adding, removing or deleting articles or binders in which articles are stored in. If an appropriate pdf file is on the drive, the path to it can be included.

# How to run

You need to have MySQL v5.0+ running on port 3306 with database named "archives", username "test" and password "test".

Example docker command:

``` 
docker run -p 3306:3306 --name mysql-docker-container -e MYSQL_ROOT_PASSWORD=test -e MYSQL_DATABASE=test -e MYSQL_USER=test -e MYSQL_PASSWORD=test mysql:latest
