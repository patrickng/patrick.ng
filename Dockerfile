From node:10.1

LABEL maintainer "me@patrick.ng"

RUN mkdir -p /usr/src/png-portfolio

COPY . /usr/src/png-portfolio

WORKDIR /usr/src/png-portfolio

RUN npm install -g pm2

RUN npm install

EXPOSE 3000

CMD ["pm2-docker", "start", "npm", "--", "start"]