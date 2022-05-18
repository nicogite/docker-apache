
# The Apache HTTP Server Project (Docker Official Image : https://hub.docker.com/_/httpd)
FROM debian:bullseye

# Run shell command
RUN echo Build Apache server on debian image

# Install apache
RUN apt-get update
RUN apt-get install apache2 -y

#ENTRYPOINT service apache2 restart

# Expose port
EXPOSE 80

# Run apache in the foreground
# ("CMD service apache2 start" would execute apache out of the shell. So docker will close the container)
CMD apachectl -D FOREGROUND