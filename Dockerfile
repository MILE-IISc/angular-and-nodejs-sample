FROM node:14.15.3

WORKDIR /opt/ng
COPY package.json angular.json tsconfig.app.json tsconfig.json tsconfig.spec.json tslint.json ./
COPY src ./src

RUN npm install

RUN npm run build
