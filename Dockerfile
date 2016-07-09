FROM ubuntu

MAINTAINER bill@empowersecurityacademy.com

RUN apt-get update

RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

RUN apt-get install -y python python-dev python-distribute python-pip

RUN python setup.py install

RUN cd main; python app.py

EXPOSE 8080

CMD cd main && python app.py