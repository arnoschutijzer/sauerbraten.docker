FROM ubuntu

EXPOSE 28785/udp 28785/tcp 28786/udp 28786/tcp

RUN apt-get update -y
RUN apt-get install wget vim -y

WORKDIR /home/sauerbraten_server

RUN wget -O sauerbraten.tar.bz2 https://sourceforge.net/projects/sauerbraten/files/sauerbraten/2013_01_04/sauerbraten_2013_04_04_collect_edition_linux.tar.bz2/download
RUN tar xvjf sauerbraten.tar.bz2

CMD [ "./sauerbraten/bin_unix/linux_64_server" ]