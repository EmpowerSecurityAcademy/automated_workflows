FROM ubuntu

MAINTAINER bill@empowersecurityacademy.com

RUN apt-get update

RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

RUN apt-get install -y python python-dev python-distribute python-pip

RUN git clone https://MY_TOKEN@github.com/user-or-org/repo

RUN 

EXPOSE 8080

CMD cd /src && node ./app.js