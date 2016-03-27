# Test-moodle-api

A ruby client for moodle application using [Moodle-api gem](https://github.com/getsmarter/moodle-api)

##Installation

Execute

  $ bundle install

##Configuration

[Create a web service in your moodle](https://docs.moodle.org/30/en/Using_web_services)

Then in Welcome controller change the values 

```ruby
    configuration.host = 'htt://yourwebsite.com'
    configuration.username = 'username'
    configuration.password = 'password'
    configuration.service = 'yourservice'
```

##Development
If you want more services [here](https://docs.moodle.org/dev/Web_service_API_functions) is the list of core Moodle services.

