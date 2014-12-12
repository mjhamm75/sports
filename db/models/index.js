if (!global.hasOwnProperty('db')) {
  var Sequelize = require('sequelize')
    , sequelize = null
 
  if (process.env.HEROKU_POSTGRESQL_OLIVE_URL) {
    // the application is executed on Heroku ... use the postgres database
    var match = process.env.HEROKU_POSTGRESQL_OLIVE_URL.match(/postgres:\/\/([^:]+):([^@]+)@([^:]+):(\d+)\/(.+)/)
 
    sequelize = new Sequelize(match[5], match[1], match[2], {
      dialect:  'postgres',
      protocol: 'postgres',
      port:     match[4],
      host:     match[3],
      logging:  console.log
    })
  } else {
    // the application is executed on the local machine ... use postgres
    sequelize = new Sequelize(
      'sports', 
      'postgres', 
      'postgres'), {
        dialect: "postgres",
        port: 5432
      }
  };
 
  global.db = {
    Sequelize: Sequelize,
    sequelize: sequelize,
    User:      sequelize.import(__dirname + '/user')
 
    // add your other models here
  }
 
  /*
    Associations can be defined here. E.g. like this:
    global.db.User.hasMany(global.db.SomethingElse)
  */
}
 
module.exports = global.db