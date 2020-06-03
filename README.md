# DEMO

## What is this?

This is a demo to show-case how to implement some testing in a rails app.

Check my other demos [here](https://github.com/andrerferrer/dedemos#ded%C3%A9mos)

We'll implement:

1. Unitary Testing: how to test a single model?
2. Integration Testing: how to test a full feature?

## The Schema

We have a Product with a name and a tagline. That's all that matters.

## Set it up for the tests

### Add some gems for testing
```ruby
  gem 'capybara', group: :test
  gem 'webdrivers', group: :test
  gem 'launchy', group: :test
```

### Drive your system tests by headless chrome
```ruby
class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :headless_chrome # Update this line
end
```

### Configure your [test helper](https://github.com/andrerferrer/basic-testing-demo/blob/master/test/test_helper.rb)

## How to implement testing for a model

### We'll do some [TDD](https://www.freecodecamp.org/news/test-driven-development-what-it-is-and-what-it-is-not-41fa6bca02a2/)

1. Create the tests
2. Write code and run the test until it's green
3. Refactor whatever you need

### 1. Write the [test](https://github.com/andrerferrer/basic-testing-demo/blob/master/test/models/user_test.rb)
> It was already generated when we generated the model

Run it with `rails test:models`.

Check the errors and write code to make the test pass.

### 2. Write the code
```ruby
# app/models/user.rb
  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
```

## How to implement testing for a feature?

### 1. Generate the test
```
rails g system_test what_will_be_tested
```

### 2. Give some params for the testing DB
* [For users](https://github.com/andrerferrer/basic-testing-demo/blob/master/test/fixtures/users.yml)
* [For products](https://github.com/andrerferrer/basic-testing-demo/blob/master/test/fixtures/products.yml)

### 3. Implement a test for each feature you want to test

[Check the code here.](https://github.com/andrerferrer/basic-testing-demo/blob/master/test/system/products_test.rb)
```ruby
  test "visiting the index works" do
    [...]
  end
  
  test 'a logged in user can create a product' do
    ...
  end
```


Good luck, have fun 🤓
