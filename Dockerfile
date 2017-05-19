# Use Nginx as base image
FROM nginx:1.11.10

# Usermod
RUN usermod -u 1000 www-data

# Copy Src Code
COPY ./public /var/www/public

# Files Permissions
RUN cd /var/www &&\
	chown root:www-data public -R

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
