## Nutrition Tracker Backend Server

This Ruby on Rails app functions as the server for the Nutrition Tracker application, which is a nutrition planner. The server tracks posts for each unique user with an account. The application also handles authentication with the JWT gem. 

## Data Models

- Users
- Food_posts
- Exercise_posts
- Notes

## Getting Started

### Installation

If you want to run the server live, you can clone the source code onto your local machine

```
git clone git@github.com:geeuho/BreadBasket_Backend.git
cd BreadBasket_Backend
bundle install 
```

You'll now have the source code with the required packages installed. 

### Postgres

The current configurations require Postgres so you'll want to download the Postgres app.

[Windows DL](https://www.postgresql.org/download/windows/)

[Mac DL](https://postgresapp.com/downloads.html)

Once downloaded you'll be able to observe and manually manipulate your data tables through the application

### Creating the databse

This a Rails application, so make sure you have Ruby and Rails installed onto your local machine

[Ruby DL](https://www.ruby-lang.org/en/downloads/)

[Rails 5 DL](https://rubyonrails.org/)

After you have those installed run the following to create the database

```
rake db:create
rake db:migrate
```

### Start

And then to seed your database with the default seed file

```
rake db:seed
```

I've manually created the seed file, but if you want to use your own data, just edit the seeds.rb file. 

### Start

Now you can start your Rails server.

``` 
rails s
```

You should be able to view your data at localhost:3000. Check the routes file in the config folder to see how to access specific data models. 

## Technologies/Libraries  

- Ruby
- Rails
- Postgres
- JWT
- Faker

## Contact

If you have any ideas you would like to contribute or would love to collaborate on the project I would love to connect!

Email: geeuho@gmail.com 

Github: [https://github.com/geeuho/](https://github.com/geeuho/)

LinkedIn: [https://www.linkedin.com/in/allen-shin/](https://www.linkedin.com/in/allen-shin/)
