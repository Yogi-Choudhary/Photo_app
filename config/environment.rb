# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {

    :address => "smtp-relay.sendinblue.com",
    :port => 587,
    :user_name => ENV['send_in_blue_user_name'],
    :password => ENV['send_in_blue_password'],
    :authentication => "login",
    :domain => 'heroku.com',
    :enable_starttls_auto => true
  }