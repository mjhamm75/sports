if (!global.hasOwnProperty('db')) {
  var Sequelize = require('sequelize')
    , sequelize = null;
  
  if (process.env.HEROKU_POSTGRESQL_OLIVE_URL) {
    // the application is executed on Heroku ... use the postgres database
    var match = process.env.HEROKU_POSTGRESQL_OLIVE_URL.match(/postgres:\/\/([^:]+):([^@]+)@([^:]+):(\d+)\/(.+)/);
 
    sequelize = new Sequelize(match[5], match[1], match[2], {
      dialect:  'postgres',
      protocol: 'postgres',
      port:     match[4],
      host:     match[3],
      logging:  console.log
    });
  } else {
    // the application is executed on the local machine ... use postgres
    console.log("**i'm right here**");
    sequelize = new Sequelize('postgres://mpwgblcimtalqt:J4cMctMLnqe09TgT4b3N-BNOE3@ec2-54-243-44-191.compute-1.amazonaws.com:5432/d7v0htmpq36aim', {
    dialect: 'postgres'// Look to the next section for possible options
})
    // sequelize = new Sequelize('d7v0htmpq36aim', 'mpwgblcimtalqt', 'J4cMctMLnqe09TgT4b3N-BNOE3', {
    //   dialect:  'postgres',
    //   protocol: 'postgres',
    //   port:     5432,
    //   host:     'ec2-54-243-44-191.compute-1.amazonaws.com',
    //   logging:  console.log
    // });
  }
  

  
  sequelize
  .authenticate()
  .complete(function(err) {
      if (err) {
          console.log('Unable to connect to the database:', err);
      } else {
          console.log('Connection has been established successfully.');
      }
  });
  

 
  global.db = {
    Sequelize: Sequelize,
    sequelize: sequelize
  };
 
  /*
    Associations can be defined here. E.g. like this:
    global.db.User.hasMany(global.db.SomethingElse)
  */
}
 
module.exports = global.db;

console.log(global.db.sequelize);