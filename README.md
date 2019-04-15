# Spring-Boot-Project

Version of my archives project utilising Spring Boot. Still in early development.

# How to run

You need to have MySQL v5.0+ running on port 3306 with database named "test", username "test" and password "test".

Example docker command:

``` 
docker run -p 3306:3306 --name mysql-docker-container -e MYSQL_ROOT_PASSWORD=test -e MYSQL_DATABASE=test -e MYSQL_USER=test -e MYSQL_PASSWORD=test mysql:latest