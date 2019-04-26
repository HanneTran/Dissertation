# README

The video files are stored in app/assets/videos. The file that controls the style of the application is stored in app/assets/stylesheets/applicaion.css.scss.
The folder e has been created by Devise and store all controllers needed to sign in, sign out and sign up a user, which is stored in app/controllers/e. Devise also created view files in app/views/devise. 
app/controllers stores all controllers and app/models store the models/tables from the database. app/views stores HTML/HAML files of web pages of the controllers.
In db folder, the migration files, schema.rb and seeds.rb are stored. Seeds.rb has not been used when adding data into the database. The data has been added by using mySQL on the command line. 

In the application, Q table is Questions table on Figure 8 in the report, and Questions table is Qdetails table on Figure 8. 



Running the application:

* Ruby version: 2.5.3

* Rails version: 5.2.2

* Database: mySQL

* Database information: username root, password root (need to be identical as database.yml file)

1. To run the application all the information above needs to be followed. Ruby version needs to be 2.5.3 and Rails version 5.2.2. mySql must be installed and have a username called root with root as the password. 

2. Open the command line, redirect to the Project folder and type in "Bundle install" to install all the gems that has been used on the application.

3. To run the server, type "Rails s", and open Google Chrome if, possible as this shows the video files (Firefox does not show the videos). Type "localhost:3000" or "http://www.localhost:3000" on the URL.

4. Click on "Sign in", then sign in with email: "admin@admin.com" and password: "password".

5. All the data has been created in local database and can therefore not be transferred. The system might therefore be empty and would not be able to test.





