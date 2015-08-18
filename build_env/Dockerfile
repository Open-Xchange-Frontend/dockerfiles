FROM evarga/jenkins-slave

MAINTAINER Julian Bäume <julian.baeume@open-xchange.com>

RUN apt-get update && apt-get install -y\
  ant\
  git\
  devscripts\
  nodejs nodejs-legacy\
  npm
RUN npm install -g npm@latest
RUN npm install -g grunt-cli bower

