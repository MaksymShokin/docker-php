FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

# move and rename file
RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src .