# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RenovationSolutions::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.server_settings = {
    :address        => 'smtp.gmail.com',
    :domain         => '127.0.0.1',
    :port           => 587,
    :user_name      => 'taylerphillips20@gmail.com',
    :password       => 'phillita20!',
    :authentication => :plain
}