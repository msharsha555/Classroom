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
        password : '1969',
        database : 'classroom',
        debug    : false //set true if you wanna see debug logger
    },'request')
);

//RESTful route
var router = express.Router();

var async = require('async');//new

/*------------------------------------------------------
*  This is router middleware,invoked everytime we hit url
*  we can use this for doing validation,authetication
--------------------------------------------------------*/
router.use(function(req, res, next) {
    console.log(req.method, req.url);
    next();
});

var home = router.route('/');

home.get(function(req,res,next){
pool.query("SELECT Title,Post_timestamp FROM Events WHERE ORDER BY Post_timestamp DESC Limit 3", function (error, result, client){
        var result1 = result;
        pool.query("SELECT Title,Post_timestamp FROM News WHERE ORDER BY Post_timestamp DESC Limit 3", function (error, result, client){
            var result2 = result;
            res.render('index', {event_slide:result1, news_slide:result2});
        });
    });
});

var department = router.route('/department');

department.get(function(req,res,next){
   connection.query('SELECT * FROM Department',function(err, result) {
/*'SELECT (SELECT * FROM Department) As DEP_info, (SELECT * FROM Dept_event) As Dep_event, 
(SELECT * FROM Dept_images) As Dep_image, (SELECT * FROM Dept_notice) As Dep_notice'*/
        if(err){
            throw err;
        } else {
            obj = {department: result};
            res.render('department', obj);                
        }
    });
});

var groups = router.route('/groups');

groups.get(function(req,res,next){
   connection.query('SELECT * FROM Groups',function(err, result) {

        if(err){
            throw err;
        } else {
            obj = {groups: result};
            res.render('groups', obj);                
        }
    });
});

var courses = router.route('/courses');

courses.get(function(req,res,next){
   connection.query('SELECT * FROM Courses',function(err, result) {

        if(err){
            throw err;
        } else {
            obj = {courses: result};
            res.render('courses', obj);                
        }
    });
});


var faculty = router.route('/faculty');

faculty.get(function(req,res,next){
   connection.query('SELECT * FROM Faculty',function(err, result) {

        if(err){
            throw err;
        } else {
            obj = {faculty: result};
            res.render('faculty', obj);                
        }
    });
});

var hostels = router.route('/hostels');

hostels.get(function(req,res,next){
   connection.query('SELECT * FROM Hostels',function(err, result) {

        if(err){
            throw err;
        } else {
            obj = {hostels: result};
            res.render('hostels', obj);                
        }
    });
});

var news = router.route('/news');

news.get(function(req,res,next){
   connection.query('SELECT * FROM News',function(err, result) {

        if(err){
            throw err;
        } else {
            obj = {news: result};
            res.render('news', obj);                
        }
    });
});

var student = router.route('/student');

student.get(function(req,res,next){
   connection.query('SELECT * FROM Student',function(err, result) {

        if(err){
            throw err;
        } else {
            obj = {student: result};
            res.render('student', obj);                
        }
    });
});

var event = router.route('/events');

event.get(function(req,res,next){
   connection.query('SELECT (SELECT * FROM Events) As eve_info, (SELECT * FROM Events_images) As eve_img',function(err, result) {

        if(err){
            throw err;
        } else {
            obj = {event: result};
            res.render('event', obj);                
        }
    });
});

//now we need to apply our router here
app.use(router);

//start Server
var server = app.listen(3000,function(){

   console.log("Listening to port %s",server.address().port);

});
