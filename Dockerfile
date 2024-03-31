FROM ubuntu:23.10

EXPOSE 28785/udp 28785/tcp 28786/udp 28786/tcp

RUN apt-get update -y
RUN apt-get install bzip2 -y

WORKDIR /home/sauerbraten_server

ADD https://sourceforge.net/projects/sauerbraten/files/sauerbraten/2020_11_29/sauerbraten_2020_12_27_linux.tar.bz2/download sauerbraten.tar.bz2

RUN tar -xvf sauerbraten.tar.bz2

CMD [ "./sauerbraten/bin_unix/linux_64_server" ]