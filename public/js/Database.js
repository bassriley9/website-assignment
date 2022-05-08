const mysql = require('myspl') 

var con = mysql.createConnection({
    Host:'localhost',
    user:'RileyBass',
    password:'Password',
});  

con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
  });

