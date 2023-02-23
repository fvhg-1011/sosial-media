# # initiate base image
# FROM ubuntu/apache2:edge
# # pindahin file ke docker-environment 
# COPY . /var/www/html
# #install dependencies php and php-mysql
# RUN apt update &&  apt install php php-mysql php-pdo -y



FROM php:7-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html