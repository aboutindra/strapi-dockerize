FROM strapi/strapi
LABEL maintainer="Muhammad Indrawan <me@indra.codes>"

WORKDIR /app

COPY / /app

RUN yarn install

ENV NODE_ENV production
ENV DATABASE_URI mongodb+srv://indra:MdcDh2tUnSXOUuW6@localhost:27017/test?retryWrites=true&w=majority

RUN yarn build
EXPOSE 1337 443 80
CMD ["yarn", "start"]
