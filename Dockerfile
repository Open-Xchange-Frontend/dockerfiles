FROM node:0.10.38

# install as root
RUN npm install -g npm@latest

RUN chmod g+ws /usr/local/bin && \
  chgrp staff /usr/local/bin && \
  chmod -R g+ws /usr/local/lib && \
  chgrp -R staff /usr/local/lib

RUN useradd -m -G staff ox
USER ox

RUN npm install -g bower grunt-cli

WORKDIR /usr/src/app

USER root
COPY run.sh /run.sh
RUN chown ox:ox /run.sh && chmod +x /run.sh
USER ox

CMD /home/ox/run.sh

