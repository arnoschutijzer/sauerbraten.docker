FROM ubuntu

RUN apt-get update -y
RUN apt-get install wget -y

WORKDIR /home/sauerbraten_server

RUN wget -O sauerbraten.tar.bz2 https://sourceforge.net/projects/sauerbraten/files/sauerbraten/2013_01_04/sauerbraten_2013_04_04_collect_edition_linux.tar.bz2/download
RUN tar xvjf sauerbraten.tar.bz2

CMD [ "/bin/bash" ]