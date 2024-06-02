# Dockerfile
FROM node:16-alpine

WORKDIR /app
COPY package*.json ./
EXPOSE 8080
COPY . /
RUN npm cache clear --force && npm install

ENTRYPOINT ["npm", "start"]