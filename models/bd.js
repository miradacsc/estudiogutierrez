var mysql = require('mysql');
var util = require('util');
var pool = mysql.createPool({
  connectionLimit : 10,
  host            : 'phtfaw4p6a970uc0.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
  user            : 'e2t2chtgn700liw2',
  password        : 'nfz6nvwlwm6lrp1y',
  database        : 'ymnuffp6thd3b67m'
});

/*
var pool = mysql.createPool({
  connectionLimit : 10,
  host            : process.env.MYSQL_HOST,
  user            : process.env.MYSQL_USER,
  password        : process.env.MYSQL_PASSWORD,
  database        : process.env.MYSQL_DB_NAME
}); */

pool.query = util.promisify(pool.query);

module.exports = pool;
