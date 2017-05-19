# Use Nginx as base image
FROM nginx:1.11.10

# Usermod
RUN usermod -u 1000 www-data

# Copy Src Code
COPY ./public /usr/share/nginx/html

# Files Permissions
RUN cd /usr/share/nginx &&\
	chown root:www-data html -R

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
