# About World of Celebration:
World of Celebration is an application that allows a user to explore the holidays celebrated in over 80 countries, territories and islands around the world. It allows you to add some of your favorite holidays to a personal collection. It also allows you to see what information Wikipedia might have about these holidays. In many cases there are no known Wikipedia entries for a holiday, in which case we encourage the user to follow the optional google search and learn about the holiday enough to potentially start a Wikipedia entry that brings awareness to a holiday and the cultures that celebrate it. Through this application I hope to create a way for people to identify underrepresented celebrations and help to remove the blindspots on Wikipedia where these celebrations and cultures are not being fully represented.
To view the current application in production please visit the this application in it's hosted form at Heroku by visiting https://serene-gorge-35862.herokuapp.com/
Thanks for visiting! If you're a developer keep reading to learn about exploring this application on your local machine.

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
  ![application.yml Setup Example](https://i.imgur.com/Z8G10wq.png)


* How to run the test suite:
  - To run the testing suite make sure you are in the root folder (`world_of_celebration/`) and run the command `rspec` to execute the RSpec testing suite.
  ![Run RSpec Testing Suite Example](blob:https://imgur.com/7d62c49e-7043-864a-ad3e-f75812a290f2)


* Running the application on your local machine:
  - Run the `rails s` command to launch your local server for this application
  ![Run Server Example](blob:https://imgur.com/0841e95f-fce8-a24a-9e49-dd0201497e6e)

  - Once your server is running, you will want to open your web browser (Firefox or Chrome preferred) and navigate to the url `http://localhost:3000` where you will see the splash page and be asked to click 'Sign in with Google' to use the application and begin exploring.
  ![Use Site Example](blob:https://imgur.com/83d6e7d6-b171-e243-b922-8cd18eae5479)

  - As a user, adding favorites to your collection is simple. Just visit a country of your choice and click the `Favorite` button for a holiday. You will then have this holiday added to your favorites dashboard to view and explore in the future.
  ![Adding Favorites Example](blob:https://imgur.com/439efd49-5532-7d41-8bba-cdcdaa1c5bea)


# How to Contribute
  - Have a great idea on how to make this application even more meaningful?  would welcome your input and contribution. Please fork this repository and once you've pushed up a contribution please make a Pull Request against my Master Branch. Please include good commit descriptions as well good communication in your pull request message. I will review your contribution and merge or respond accordingly.

# Thank you
Thank you for taking the time to view my application. I hope you find it useful, enjoyable and educational. I appreciate your time. Have a wonderful day!
