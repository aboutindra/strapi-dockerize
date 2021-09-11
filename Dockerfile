FROM strapi/strapi
LABEL maintainer="Muhammad Indrawan <me@indra.codes>"

WORKDIR /app

COPY / /app

RUN yarn install

ENV NODE_ENV production

RUN yarn build
EXPOSE 1337
CMD ["yarn", "start"]
