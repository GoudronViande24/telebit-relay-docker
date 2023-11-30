FROM node:10

RUN git -c http.sslVerify=false clone https://git.coolaj86.com/coolaj86/telebit-relay.js.git /telebit-relay
WORKDIR /telebit-relay
RUN npm install

CMD ["node", "/telebit-relay/bin/telebit-relay.js", "--config", "/config.yml"]
