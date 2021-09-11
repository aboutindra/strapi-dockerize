module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'mongoose',
      settings: {
        uri: env('DATABASE_URI', 'mongodb+srv://indra-portfolio:MYGrhSWmaNBoYlvw@portfolio.bt65x.mongodb.net/myFirstDatabase?retryWrites=true&w=majority'),
      },
      options: {
        ssl: true,
      },
    },
  },
});
