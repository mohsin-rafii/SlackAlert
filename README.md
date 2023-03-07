# Slack Alert

* Ruby version
  3.0.0

* Rails version
  7.0.4.2

# Deployment instructions

* clone the git repository using 'git clone git@github.com:mohsin-rafii/slackalert.git'
* Go to the projects directory using 'cd' command
* Once in projects folder run the following commands in terminal:
* 'bundle'
* 'bin/rails s'

# Test the webhook endpoint:

You can use a tool like curl or Postman to test the webhook endpoint by sending POST requests to http://localhost:3000/slack_notifications/send_notification with a JSON payload in the body. 
