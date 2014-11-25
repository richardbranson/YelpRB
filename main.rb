######### CHALLENGE #########
# Create a command line based application that fulfills these criteria:
# Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
# Connects to a 3rd party api where the call varies based on what the user gives you.
# Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
# Push code on Github.

######### SOLUTION #########
require 'rubygems'
require 'oauth' 
require 'pry'
require 'json'
require_relative 'lib/welcome'
require_relative 'lib/yelp'
require_relative 'lib/name'
require_relative 'lib/location'
require_relative 'lib/thanks'

######### GET USER INPUT #########
system "clear"
welcome = welcome_script # Define "welcome_script in new file called welcome.rb"
user = ask_name # Define "ask_name" method in new file called name.rb.
location = get_location

######### SERACH YELP API #########
search = Yelp.new(user, location)

######### DISPLAY RESULTS TO USER #########
search.search_param

######### SAY THANKS #########
# thanks = say_thanks
puts "Thanks for using RBELP #{user}, hope you liked the results for #{location}."

######### Still to do #########
# get back the search term variable into the final message
# break final message into its own method/class/file
# validate the data input to be numbers only when I ask which type of search is performed, currently it crashes out if a 1 or 2 isn't entered
# Add extra features like ask if they want to search again.