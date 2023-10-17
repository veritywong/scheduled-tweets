# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

New Rails project:
```
rails new scheduled-tweets
bundle install
```# scheduled-tweets

Creating User Model to begin User authentication
```
rails generate model User email:string password_digest:string

rails db:migrate

rails c
(to enter rails console and create new user)

User.create({email:'email@email.com', password: 'password', password_confirmation: 'password'})
```

If updating database rules:
```
rails db:rollback
rails db:migrate

To run both of the above at once:
rails db:migrate:redo
```

# Check Routes
```
rails routes
```

# Create a mailer in rails
```
rails g mailer Password reset
```

# Saving credentials
``` 
rails credentials:edit --environment=development
```
type in:
```
twitter:
  api_key: lakdjlkahdgh
  api_secret: laldkghalshdldsalihgih
```
can access them by:
```
rails c
Rails.application.credentials.twitter
Rails.application.credentials.dig(:twitter, :api_key)
```

# Creating Twitter Model
```
rails g model TwitterAccount user:belong_to name username image token secret

rails db:migrate
