# Test-moodle-api

A ruby client for moodle application using [Moodle-api gem](https://github.com/getsmarter/moodle-api)

##Installation

Execute

```
  $ bundle install
```

##Configuration

###In Moodle
[Create a web service in your moodle](https://docs.moodle.org/30/en/Using_web_services)

Give to the rol **Authenthicated User** the capability to create token
Go to Site **Administration -> Users -> Permissions -> Define roles**
Select **Authenthicated user**, click in **Edit** and in the section Capabilities search:

```
  moodle/webservice:createtoken
```
```
  webservice/rest:use #only if you are using rest
```
```
  webservice/soap:use #only if you are using soap
```
```
  webservice/xmlrpc:use #only if you are using xml
```

Allow that capabilities to the user and save.

### In Ruby 
Then in Welcome controller change the values

```ruby
    configuration.host = 'htt://yourwebsite.com'
    configuration.username = 'username'
    configuration.password = 'password'
    configuration.service = 'yourservice'
```

##Development
If you want more services [here](https://docs.moodle.org/dev/Web_service_API_functions) is the list of core Moodle services.
