module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 443),
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', 'ea716fd1d7dbd1e6a3e704df0834a965'),
    },
  },
});
