# About World of Celebration:


# How to get this application up and running locally:
These instructions have been written assuming you have the ability to clone down github repositories as well as have the ruby and rails coding environment set up on your local machine.

* Ruby
  - Rails Version 5.1.4
  - Ruby 2.3.0

* Configuration
  - Select a folder where you would like to clone this project
  - Enter `git clone git@github.com:JoelLindow/world_of_celebration.git` into your console
  - `bundle install`

* Database creation and seeding
These commands will create your postgresql database as well as seed the database with all country data necessary to populate the main views as well as make related API calls
  - `rake db:create`
  - `rake db:seed`

* API Key and Google Oauth Secrets
  - After setting up and seeding your database, you'll want to plug in the last pieces required to make the application functional.
  - Run `bundle exec figaro install`
    - This will create your application.yml folder which is a local hidden file used to house your secrets, keys and other private information that will be passed to other parts of the application to allow GoogleOauth login to work, as well as for your API calls to function and hit the endpoints properly.
    - This will also update your `.gitignore` file so that you won't accidentally push up your own secrets to github or any other online workflow management system if you decide to do so.
    - Here's an example of the feedback you should see in your console when running the `bundle exec figaro install` command:
    ![Figaro Install Example](https://i.imgur.com/kWmd0cw.png)


  - Visit the Google Developer section and sign up for a new `GOOGLE_ID:` & `GOOGLE_SECRET:`. You will add these strings to your `/world_of_celebration/config/application.yml`
    - For instruction on how to get these necessary pieces, please refer to THIS DOCUMENTATION (LINK TO GOOGLE OAUTH SETUP) to learn how to navigate the Google Developer site and get your own ID and Secret.

  - Visit https://holidayapi.com and sign up for your own API key. Add this key to the `application.yml` file to the right of the `HOLIDAY_API_KEY:`

  - Here is an example of how a properly setup `application.yml` file should look once you've completed these steps:
  PICTURE!
  PICTURE!
  PICTURE!
  PICTURE!
  PICTURE!

* How to run the test suite:
  - To run the testing suite make sure you are in the root folder (`world_of_celebration/`) and run the command `rspec` to execute the RSpec testing suite.
  PICTURE!
  PICTURE!
  PICTURE!
  PICTURE!

* Running the application on your local machine:
  - Run the `rails s` command to launch your local server for this application
  - Once your server is running, you will want to open your web browser (Firefox or Chrome preferred) and navigate to the url `http://localhost:3000` where you will see the splash page and be asked to click 'Sign in with Google' to use the application and begin exploring.
  PICTURE!
  PICTURE!
  PICTURE!
  PICTURE!


* ...
# world_of_celebration
