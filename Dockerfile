FROM node

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

RUN ls

COPY package*.json ./

USER node

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]