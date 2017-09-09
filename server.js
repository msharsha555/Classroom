var express  = require('express'),
    path     = require('path'),
    bodyParser = require('body-parser'),
    app = express(),
    expressValidator = require('express-validator');


/*Set EJS template Engine*/
app.set('views','./views');
app.set('view engine','ejs');

app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.urlencoded({ extended: true })); //support x-www-form-urlencoded
app.use(bodyParser.json());
app.use(expressValidator());

/*MySql connection*/
var connection  = require('express-myconnection'),
    mysql = require('mysql');

app.use(
    connection(mysql,{
        host     : 'localhost',
        user     : 'root',
        password : 'root',
        database : 'classroom',
        debug    : false //set true if you wanna see debug logger
    },'request')
);

//RESTful route
var router = express.Router();

/*------------------------------------------------------
*  This is router middleware,invoked everytime we hit url
*  we can use this for doing validation,authetication
--------------------------------------------------------*/
router.use(function(req, res, next) {
    console.log(req.method, req.url);
    next();
});

var dashboard = router.route('/contact');

dashboard.get(function(req,res,next){
  res.render('contact');
});

// -----------------------------------------------------------------------------
// var login = router.route('/login');
//
// login.get(function(req,res,next){
//   res.render('index');
// });
//
// login.post(function(req,res,next){
//
//     console.log("req.body--", req.body);
//
//     //get data
//     var data;
//     if (req.body.fullName==undefined) { //  login
//         data = {
//             email:req.body.email,
//             password:req.body.password
//          };
//     }
//     else {                        //  register
//       data = {
//           name:req.body.fullName,
//           email:req.body.email,
//           password:req.body.password,
//           phone:req.body.phone
//        };
//     }
//
//     // inserting into mysql
//     req.getConnection(function (err, conn){
//         if (err)
//           return next("Cannot Connect");
//
//         if (req.body.fullName==undefined){   //login
//           var query = conn.query("SELECT name FROM classroomprofessionals.users WHERE email = '"+data.email+"' and password = '"+data.password+"' ", function(err,rows){
//               if(err){
//                 console.log(err);
//                   return next("Mysql error, check your query");
//               }
//               if(rows.length==0)
//                 res.status(400).json("Invalid emailID - password");
//               else
//               res.status(200).json(rows[0].name);
//            });
//         }
//         else{         //register
//           var query = conn.query("INSERT INTO classroomprofessionals.users set ? ", data, function(err, rows){
//              if(err){
//                   console.log(err);
//                   return next("Mysql error, check your query");
//              }
//              res.sendStatus(200);
//           });
//         }
//      });
// });

// var home = router.route('/newsfeed');

/*------------------------------------------------------
route.all is extremely useful. you can use it to do
stuffs for specific routes. for example you need to do
a validation everytime route /api/user/:user_id it hit.

remove curut2.all() if you dont want it
------------------------------------------------------*/
//
// home.all(function(req,res,next){
//     console.log("You need to smth about home Route ? Do it here");
//     console.log(req.params);
//     next();
// });
//
// //get data to update
// home.get(function(req,res,next){
//
//     var user_id = req.params.user_id;
//     res.render('newsfeed');
//
//     req.getConnection(function(err,conn){
//
//         if (err) return next("Cannot Connect");
//
//         var query = conn.query("SELECT * FROM t_user WHERE user_id = ? ",[user_id],function(err,rows){
//
//             if(err){
//                 console.log(err);
//                 return next("Mysql error, check your query");
//             }
//
//             //if user not found
//             if(rows.length < 1)
//                 return res.send("User Not found");
//
//             res.render('edit',{title:"Edit user",data:rows});
//         });
//
//     });
//
// });
//
// //update data
// home.put(function(req,res,next){
//     var user_id = req.params.user_id;
//
//     //validation
//     req.assert('name','Name is required').notEmpty();
//     req.assert('email','A valid email is required').isEmail();
//     req.assert('password','Enter a password 6 - 20').len(6,20);
//
//     var errors = req.validationErrors();
//     if(errors){
//         res.status(422).json(errors);
//         return;
//     }
//
//     //get data
//     var data = {
//         name:req.body.name,
//         emailId:req.body.email,
//         password:req.body.password
//      };
//
//     //inserting into mysql
//     req.getConnection(function (err, conn){
//
//         if (err) return next("Cannot Connect");
//
//         var query = conn.query("UPDATE t_user set ? WHERE user_id = ? ",[data,user_id], function(err, rows){
//
//            if(err){
//                 console.log(err);
//                 return next("Mysql error, check your query");
//            }
//
//           res.sendStatus(200);
//
//         });
//
//      });
//
// });
//
// //delete data
// home.delete(function(req,res,next){
//
//     var user_id = req.params.user_id;
//
//      req.getConnection(function (err, conn) {
//
//         if (err) return next("Cannot Connect");
//
//         var query = conn.query("DELETE FROM t_user  WHERE user_id = ? ",[user_id], function(err, rows){
//
//              if(err){
//                 console.log(err);
//                 return next("Mysql error, check your query");
//              }
//
//              res.sendStatus(200);
//
//         });
//         //console.log(query.sql);
//
//      });
// });
//
// var createAcc = router.route('/create-account');
//
// createAcc.get(function(req,res,next){
//   res.render('create-account');
// });
//
// createAcc.post(function(req,res,next){
//
//     //server side validation*********
//     req.assert('firstName','First Name is required').matches(/[^\s\\]/);
//     var errors = req.validationErrors();
//     if(errors){
//         res.status(422).json(errors);
//         return;
//     }
//
//     req.assert('emailId','A valid email is required').isEmail();
//     errors = req.validationErrors();
//     if(errors){
//         res.status(422).json(errors);
//         return;
//     }
//
//     req.assert('password','Enter a password 6 - 20').len(6,20);
//     errors = req.validationErrors();
//     if(errors){
//         res.status(422).json(errors);
//         return;
//     }
//
//     //get data
//     var data = {
//         name:req.body.firstName+req.body.lastName,
//         emailId:req.body.emailId,
//         password:req.body.password
//      };
//
//     //inserting into mysql
//     req.getConnection(function (err, conn){
//         if (err) return next("Cannot Connect");
//
//         var query = conn.query("INSERT INTO classroomshoppers.userdetail set ? ", data, function(err, rows){
//            if(err){
//                 console.log(err);
//                 return next("Mysql error, check your query");
//            }
//
//            res.sendStatus(200);
//         });
//      });
// });
//
// var loginAcc = router.route('/login-account');
//
// loginAcc.get(function(req,res,next){
//   res.render('login-account');
// });
//
// loginAcc.put(function(req,res,next){
//   console.error("inside post--------------");
//
//   req.assert('emailId','A valid email is required').isEmail();
//   errors = req.validationErrors();
//   if(errors){
//       res.status(422).json(errors);
//       return;
//   }
//
//   req.assert('password','Empty password not alllowed').notEmpty();
//   errors = req.validationErrors();
//   if(errors){
//       res.status(422).json(errors);
//       return;
//   }
//
//   var emailId = req.body.emailId;
//   var password = req.body.password;
//
//   req.getConnection(function(err,conn){
//       if (err){
//         console.log(err);
//         return next("Cannot Connect");
//       }
//
//       var query = conn.query("SELECT name FROM classroomshoppers.userdetail WHERE emailId = '"+emailId+"' and password = '"+password+"' ", function(err,rows){
//           if(err){
//             console.log(err);
//               return next("Mysql error, check your query");
//           }
//           if(rows.length==0)
//             res.status(400).json("Invalid emailID - password");
//           else
//           res.status(200).json(rows[0].name);
//        });
//   });
// });
//
//
//

// -----------------------------------------------------------------------------


// var curut = router.route('/user');
//
// //show the CRUD interface | GET
// curut.get(function(req,res,next){
//
//     req.getConnection(function(err,conn){
//
//         if (err) return next("Cannot Connect");
//
//         var query = conn.query('SELECT * FROM t_user',function(err,rows){
//
//             if(err){
//                 console.log(err);
//                 return next("Mysql error, check your query");
//             }
//
//             res.render('user',{title:"RESTful Crud Example",data:rows});
//
//          });
//
//     });
//
// });
// //post data to DB | POST
// curut.post(function(req,res,next){
//
//     //validation
//     req.assert('name','Name is required').notEmpty();
//     req.assert('email','A valid email is required').isEmail();
//     req.assert('password','Enter a password 6 - 20').len(6,20);
//
//     var errors = req.validationErrors();
//     if(errors){
//         res.status(422).json(errors);
//         return;
//     }
//
//     //get data
//     var data = {
//         name:req.body.name,
//         email:req.body.email,
//         password:req.body.password
//      };
//
//     //inserting into mysql
//     req.getConnection(function (err, conn){
//
//         if (err) return next("Cannot Connect");
//
//         var query = conn.query("INSERT INTO t_user set ? ",data, function(err, rows){
//
//            if(err){
//                 console.log(err);
//                 return next("Mysql error, check your query");
//            }
//
//           res.sendStatus(200);
//
//         });
//
//      });
//
// });
//
// // -----------------------------------------------------------------------------
//
// var curut2 = router.route('/user/:user_id');
//
// curut2.all(function(req,res,next){
//     console.log("You need to smth about curut2 Route ? Do it here");
//     console.log(req.params);
//     next();
// });
//
// //get data to update
// curut2.get(function(req,res,next){
//
//     var user_id = req.params.user_id;
//
//     req.getConnection(function(err,conn){
//
//         if (err) return next("Cannot Connect");
//
//         var query = conn.query("SELECT * FROM t_user WHERE user_id = ? ",[user_id],function(err,rows){
//
//             if(err){
//                 console.log(err);
//                 return next("Mysql error, check your query");
//             }
//
//             //if user not found
//             if(rows.length < 1)
//                 return res.send("User Not found");
//
//             res.render('edit',{title:"Edit user",data:rows});
//         });
//
//     });
//
// });
//
// //update data
// curut2.put(function(req,res,next){
//     var user_id = req.params.user_id;
//
//     //validation
//     req.assert('name','Name is required').notEmpty();
//     req.assert('email','A valid email is required').isEmail();
//     req.assert('password','Enter a password 6 - 20').len(6,20);
//
//     var errors = req.validationErrors();
//     if(errors){
//         res.status(422).json(errors);
//         return;
//     }
//
//     //get data
//     var data = {
//         name:req.body.name,
//         email:req.body.email,
//         password:req.body.password
//      };
//
//     //inserting into mysql
//     req.getConnection(function (err, conn){
//
//         if (err) return next("Cannot Connect");
//
//         var query = conn.query("UPDATE t_user set ? WHERE user_id = ? ",[data,user_id], function(err, rows){
//
//            if(err){
//                 console.log(err);
//                 return next("Mysql error, check your query");
//            }
//
//           res.sendStatus(200);
//
//         });
//
//      });
//
// });
//
// //delete data
// curut2.delete(function(req,res,next){
//
//     var user_id = req.params.user_id;
//
//      req.getConnection(function (err, conn) {
//
//         if (err) return next("Cannot Connect");
//
//         var query = conn.query("DELETE FROM t_user  WHERE user_id = ? ",[user_id], function(err, rows){
//
//              if(err){
//                 console.log(err);
//                 return next("Mysql error, check your query");
//              }
//
//              res.sendStatus(200);
//
//         });
//         //console.log(query.sql);
//
//      });
// });
//
// // -----------------------------------------------------------------------------

//now we need to apply our router here
app.use(router);

//start Server
var server = app.listen(8000,function(){

   console.log("Listening to port %s",server.address().port);

});
