LABEL maintainer="Muhammad Indrawan <me@indra.codes>"

FROM strapi/base
WORKDIR /opt/app

COPY ./app/package.json ./
COPY ./app/yarn.lock ./

RUN yarn install
COPY ./app .

ENV NODE_ENV production

RUN yarn build
EXPOSE 1337
CMD ["yarn", "start"]
