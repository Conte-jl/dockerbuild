From ubuntu:16.04
Maintainer contet1807@outlook.com
LABEL purpose="HOL"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN ["/bun.bash", "-c", "echo welcome automated >> test.html"]
EXPOSE 80
CMD ["aoachectl", "-DFOREGROUND"]