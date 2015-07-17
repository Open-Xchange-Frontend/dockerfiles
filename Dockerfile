FROM node:0.10.38

RUN npm install -g npm@latest bower grunt-cli

COPY run.sh /
RUN chmod +x /run.sh

WORKDIR /usr/src/app

CMD /run.sh

