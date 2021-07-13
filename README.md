# README

To update gemfile and database

```
yarn
bundle install
rails db:create
rails db:migrate

```

To run tests

```
rspec
```

To run app

```
rails s
```

## Project Development

### User Stories

```
As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made
```

### Test-Driven Development

I set out to make this project completely test-driven, ensuring no production code was written without a test driving.

I managed this through a combination of features tests and unit tests on the controllers and models.

I used the red-green-refactor cycle and kept as much logic as possible in the controllers and models.

I used the application controller to define helper methods and abstracted as much logic as possible out of my methods.

I believe this has left me with very clean, readable code following the principles of OOP.
