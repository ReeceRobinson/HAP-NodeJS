FROM node:8
MAINTAINER Reece@TheRobinsons.gen.nz

WORKDIR /home/node/app
COPY . /home/node/app/
COPY BridgedCore.js app.js
RUN npm install

ENV NODE_ENV production

VOLUME /home/node/app /home/node/app/persist /home/node/app/accessories
EXPOSE 51826

CMD /usr/local/bin/node app.js