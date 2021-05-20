FROM node:alpine

WORKDIR '/app'

COPY package.json .

# npm install => node_modules
RUN npm install

COPY index.js .

CMD ["npm", "start"]