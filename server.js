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
var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '1969',
  database : 'classroom'
});

//RESTful route
var router = express.Router();

var async = require('async');//new
var obj = {};

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

var home = router.route('/');

/*
home.get(function(req,res,next){
    connection.query('SELECT (SELECT Post_timestamp FROM Events ORDER BY Post_timestamp DESC Limit 3) As event_time,(SELECT Title FROM Events ORDER BY Post_timestamp DESC Limit 3) As events, (SELECT Title FROM News ORDER BY Post_timestamp DESC Limit 3) As news,(SELECT Post_timestamp FROM News ORDER BY Post_timestamp DESC Limit 3) As news_time', function (err, result) {
        if(err){
            throw err;
        } else {
            obj = {index: result};
            res.render('index', obj);                
        }        
    });
});*/

/*
home.get(function(req,res,next){
    async.parallel([
  function(callback) { connection.query(QUERY1, callback) },
  function(callback) { connection.query(QUERY2, callback) }
    ], function(err, result) {
  res.render('template', { event : result[0], news : result[1] });
});
});*/
var q;
home.get(function(req,res,next){
    connection.query('SELECT Title,Post_timestamp FROM Events ORDER BY Post_timestamp DESC Limit 5', function (err, result1) {
        if(err){
            throw err;
        } else {
            q = {index: result1};                
        }        
    });
    connection.query('SELECT Title,Post_timestamp FROM News ORDER BY Post_timestamp DESC Limit 5', function (err, result2) {
        if(err){
            throw err;
        } else {
            var obj ={};
            obj.index = q.index;
            obj.part2 = result2;  
            res.render('index', obj);         
        }        
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
   connection.query('SELECT * FROM Hostel',function(err, result) {

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
   connection.query('SELECT * FROM Events',function(err, result) {
/*SELECT (SELECT * FROM Events) As eve_info, (SELECT * FROM Event_images) As eve_img*/
        if(err){
            throw err;
        } else {
            obj = {event: result};
            res.render('events', obj);                
        }
    });
});

//now we need to apply our router here
app.use(router);

//start Server
var server = app.listen(3000,function(){

   console.log("Listening to port %s",server.address().port);

});
