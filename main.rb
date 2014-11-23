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
require_relative 'lib/yelp'
require_relative 'lib/name'


######### GET USER INPUT #########
system "clear"
puts "=" * 80
puts "=" * 30 + " Welcome to YELP-RB " + "=" * 30
puts "=" * 5 + " A terminal app that queries the api.yelp.com to find local stuff. " + "=" * 8
puts "=" * 80
puts "=" * 80
sleep 1
puts "=" * 5 + " You can search for local businesses by keywords."
sleep 2
puts "=" * 5 + " but first..."
sleep 1
user = ask_name # Define "ask_name" method in new file called name.rb.
sleep 1
puts "Where are you now? Accepts:(City, County or Post Code)"
location = gets.chomp.gsub(" ", "+") # Get user input and asign it to location

######### SERACH YELP API #########
search = Yelp.new(user, location)
search.search_param

puts

######### DISPLAY RESULTS TO USER #########
puts "Thanks for using YELP-RB #{user}, hope you liked the results for #{location}."