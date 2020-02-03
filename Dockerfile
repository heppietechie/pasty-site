FROM nginx:alpine
MAINTAINER Raju George <test@demo.com>

WORKDIR /website

COPY src /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80