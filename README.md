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

## How to implement testing for a feature?

### 1. Generate the test
```
rails g system_test what_will_be_tested
```
### 2. Implement a test for each feature you want to test

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
