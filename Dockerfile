# FROM nginx:alpine

# COPY . /user/share/nginx/html

FROM httpd:2.4
COPY . /usr/local/apache2/htdocs/