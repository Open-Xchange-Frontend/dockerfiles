FROM evarga/jenkins-slave

MAINTAINER Julian Bäume <julian.baeume@open-xchange.com>

RUN apt-get update && apt-get install -y\
  ant\
  git\
  devscripts\
  ruby2.0 ruby2.0-dev\
  nodejs nodejs-legacy\
  npm
RUN npm install -g npm@latest-2
RUN npm install -g grunt-cli bower
#See https://bugs.launchpad.net/ubuntu/+source/ruby2.0/+bug/1310292/comments/20
RUN ln -sf /usr/bin/ruby2.0 /usr/bin/ruby && ln -sf /usr/bin/gem2.0 /usr/bin/gem
RUN gem install bundler

