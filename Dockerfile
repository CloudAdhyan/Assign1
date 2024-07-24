FROM ubuntu
WORKDIR /etc
VOLUME ["/clouddata"]
RUN apt-get update -y
RUN apt-get install git -y
RUN apt-get apache2 -y
RUN apt-get systemctl -y
RUN apt-get update -y
RUN systemctl enable apache2
RUN systemctl restart apache
COPY . /var/www/html
RUN systemctl restart apache2

