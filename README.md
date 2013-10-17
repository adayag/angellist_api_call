# AngelList API Call
Simple app that uses an unauthenticated api call to the AngelList Api to match a url and display data in an autofilled form. No database is implemented and models are using ActiveModel instead of ActiveRecord

## Basic Usage
Run ```bundle install``` and ```rake db:create```

## Testing
Testing is run with ```Rspec``` and```capybara``` to test both the happy and sad paths for the API call.  I use ```vcr``` to mock out the web calls so that it does not call to the API everytime the tests are run.

To use run ```rake db:test:prepare``` then ```bundle exec rspec spec```
