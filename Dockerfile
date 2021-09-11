FROM strapi/strapi
LABEL maintainer="Muhammad Indrawan <me@indra.codes>"

ARG DATABASE_URI

WORKDIR /app

COPY / /app

RUN yarn install

ENV NODE_ENV production
ENV DATABASE_URI $DATABASE_URI

RUN yarn build
EXPOSE 1337
CMD ["yarn", "start"]
