FROM node:16

COPY package*.json ./

WORKDIR /opt/server/backend-test

COPY . .

# RUN rm -rf package*.json
RUN npm install
EXPOSE 8080
CMD [ "node", "index.js" ]
