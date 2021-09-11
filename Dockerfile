FROM strapi/strapi
LABEL maintainer="Muhammad Indrawan <me@indra.codes>"
WORKDIR /opt/app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install
COPY ./app .

ENV NODE_ENV production

RUN yarn build
EXPOSE 1337
CMD ["yarn", "start"]
