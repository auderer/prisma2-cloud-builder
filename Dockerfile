FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

RUN npm install -g --unsafe-perm prisma2

ENTRYPOINT [ "prisma2" ]
