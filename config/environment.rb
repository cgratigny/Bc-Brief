# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
BcBrief::Application.initialize!

Time::DATE_FORMATS[:updated_time] = "Last Updated on %B %d at %I:%M %p"
