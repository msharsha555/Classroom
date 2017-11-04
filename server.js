var express  = require('express'),
    path     = require('path'),
    bodyParser = require('body-parser'),
    app = express(),
    expressValidator = require('express-validator'),
    server = require('http').createServer(app);

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
  password : '****', 
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

var cse = router.route('/department/iitr_cse');
var r,s,t;
var str = 'iitr_cse';
cse.get(function(req,res,next){
    connection.query('SELECT * FROM Department WHERE ID =?',[str], function (err, result1) {
        if(err){
            throw err;
        } else {
            q = {index: result1};                
        }        
    });
    connection.query('SELECT * FROM Dept_images WHERE d_ID =?',[str], function (err, result3) {
        if(err){
            throw err;
        } else {
            r = {index: result3};                
        }        
    });
    connection.query('SELECT * FROM (Dept_event natural join Events) WHERE d_ID =?',[str], function (err, result4) {
        if(err){
            throw err;
        } else {
            s = {index: result4};                
        }        
    });
    connection.query('SELECT * FROM (Dept_notice natural join News) WHERE d_ID =?',[str], function (err, result2) {
        if(err){
            throw err;
        } else {
            var obj ={};
            obj.index = q.index;
            obj.part2 = r.index;
            obj.part3 = s.index;
            obj.part4 = result2; 
            res.render('cse', obj);         
        }        
    });
});

var ece = router.route('/department/iitr_ee');
str = 'iitr_ee';
ece.get(function(req,res,next){
    connection.query('SELECT * FROM Department WHERE ID =?',[str], function (err, result1) {
        if(err){
            throw err;
        } else {
            q = {index: result1};                
        }        
    });
    connection.query('SELECT * FROM Dept_images WHERE d_ID =?',[str], function (err, result3) {
        if(err){
            throw err;
        } else {
            r = {index: result3};                
        }        
    });
    connection.query('SELECT * FROM (Dept_event natural join Events) WHERE d_ID =?',[str], function (err, result4) {
        if(err){
            throw err;
        } else {
            s = {index: result4};                
        }        
    });
    connection.query('SELECT * FROM (Dept_notice natural join News) WHERE d_ID =?',[str], function (err, result2) {
        if(err){
            throw err;
        } else {
            var obj ={};
            obj.index = q.index;
            obj.part2 = r.index;
            obj.part3 = s.index;
            obj.part4 = result2; 
            res.render('ece', obj);         
        }        
    });
});

var ce = router.route('/department/iitr_ce');
str = 'iitr_ce';
ce.get(function(req,res,next){
    connection.query('SELECT * FROM Department WHERE ID =?',[str], function (err, result1) {
        if(err){
            throw err;
        } else {
            q = {index: result1};                
        }        
    });
    connection.query('SELECT * FROM Dept_images WHERE d_ID =?',[str], function (err, result3) {
        if(err){
            throw err;
        } else {
            r = {index: result3};                
        }        
    });
    connection.query('SELECT * FROM (Dept_event natural join Events) WHERE d_ID =?',[str], function (err, result4) {
        if(err){
            throw err;
        } else {
            s = {index: result4};                
        }        
    });
    connection.query('SELECT * FROM (Dept_notice natural join News) WHERE d_ID =?',[str], function (err, result2) {
        if(err){
            throw err;
        } else {
            var obj ={};
            obj.index = q.index;
            obj.part2 = r.index;
            obj.part3 = s.index;
            obj.part4 = result2; 
            res.render('ce', obj);         
        }        
    });
});

var civil = router.route('/department/iitr_civil');
str = 'iitr_civil';
civil.get(function(req,res,next){
    connection.query('SELECT * FROM Department WHERE ID =?',[str], function (err, result1) {
        if(err){
            throw err;
        } else {
            q = {index: result1};                
        }        
    });
    connection.query('SELECT * FROM Dept_images WHERE d_ID =?',[str], function (err, result3) {
        if(err){
            throw err;
        } else {
            r = {index: result3};                
        }        
    });
    connection.query('SELECT * FROM (Dept_event natural join Events) WHERE d_ID =?',[str], function (err, result4) {
        if(err){
            throw err;
        } else {
            s = {index: result4};                
        }        
    });
    connection.query('SELECT * FROM (Dept_notice natural join News) WHERE d_ID =?',[str], function (err, result2) {
        if(err){
            throw err;
        } else {
            var obj ={};
            obj.index = q.index;
            obj.part2 = r.index;
            obj.part3 = s.index;
            obj.part4 = result2; 
            res.render('civil', obj);         
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
server.listen(process.env.PORT || 3000, function(){
    console.log('app running at port 3000');
});

