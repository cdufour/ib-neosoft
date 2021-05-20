FROM node:14.17-alpine

COPY index.js .
COPY package.json .

RUN npm i

CMD ["node", "index.js"]