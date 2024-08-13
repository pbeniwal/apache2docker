FROM ubuntu

RUN apt update

RUN apt -y install apache2 curl

ADD index.html /var/www/html

ENTRYPOINT [ "apachectl", "-D", "FOREGROUND" ]

ENV name=Trainocate

