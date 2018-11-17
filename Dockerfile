FROM node:9.11.1-alpine

ADD ./package.json /vue/package.json
ADD ./yarn.lock /vue/yarn.lock
WORKDIR /vue
RUN yarn

ENV HOST 0.0.0.0
EXPOSE 8080
