# Classsroom
project for DBMS course Students only


<img src="https://raw.githubusercontent.com/madHEYsia/Classroom/master/screenshot.JPG" >
<img src="https://raw.githubusercontent.com/madHEYsia/Classroom/master/screenshot1.JPG" >

This is an example of RESTful CRUD in Node.js n mySQL.

## Installation
Clone or download zip to your machine then hit this :

    cd classroom

then

    npm install

## Configuration (database)
server.js

        host: 'localhost',
        user: 'root',
        password : 'root',
        port : 3000, //port mysql
        database:'classroom'


You're gonna need to create a DB named 'classroom' or whatever you name it,  import classroom.sql

Install Sourcetree / Github / Git Bash for code management.

Download and Install Node Js (https://nodejs.org/en/download/). To check if node installed successfully, run "node -v" in cmd. If successful, version is displayed

Download and Install Atom/ Submlime Text Editor (Suggested) 

Fork and Clone the repository. For this new repository.

In command prompt, cd to master (.git) directory -> run "npm install" (this will take 30-50sec)

Open MYSQL workbench -> "Data Import/ Restore" -> "Import from Self-contained File" -> Choose dump sql file (<RepoName>\<RepoName>.sql) -> Click on "New..." -> Name it <RepoName> -> "Start Import".

Make sure host, Name, password, and database are entered correctly according to your system configuration. You may correct it in <RepoName>\server.js file line no. 23.

Run "npm start" in cmd. Now your port is listening for API calls at 3000.

## Open your Browser
And type: localhost:3000/
