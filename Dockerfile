FROM node:lts-alpine

WORKDIR /home/node/app

COPY package*.json ./

RUN npm i

COPY . .

EXPOSE 3000

ENV PORT=3000

CMD ["node", "index.js"]
