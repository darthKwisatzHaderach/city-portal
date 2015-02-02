Encoding.default_external = Encoding::UTF_8
ENV["RAILS_ENV"] ||= "production"

# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Alpha::Application.initialize!
