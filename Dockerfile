FROM node:15.14
ENV NODE_ENV=development

WORKDIR /usr/local

RUN npm install -g npm@latest

COPY ./src/package*.json ./

RUN npm install \
    && npm cache clean --force

ENV PATH=/usr/local/node_modules/.bin:$PATH

WORKDIR /usr/local/app

COPY ./src .

EXPOSE 8888
