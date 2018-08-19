FROM microsoft/mssql-server-linux:2017-latest

ENV ACCEPT_EULA=Y

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD entrypoint.sh /usr/src/app/entrypoint.sh

ENV SA_PASSWORD=PaSsw0rd!

ADD import-data.sh /usr/src/app/import-data.sh
ADD *.sql /usr/src/app/

RUN chmod +x /usr/src/app/*.sh

CMD /bin/bash /usr/src/app/entrypoint.sh
