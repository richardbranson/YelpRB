######### CHALLENGE #########
# Create a command line based application that fulfills these criteria:
# Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
# Connects to a 3rd party api where the call varies based on what the user gives you.
# Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
# Push code on Github.
######### SOLUTION #########

######### GET USER INPUT #########
system "clear"
puts "=" * 80
puts "=" * 30 + " Welcome to YELP-RB " + "=" * 30
puts "=" * 6 + " A terminal app that queries the api.yelp.com to find local stuff. " + "=" * 7
puts "=" * 80
puts "=" * 80
sleep 1
puts "=" * 5 + " You can search for businesses by keywords that are local to you. " + "=" * 9
sleep 1
puts "=" *  5 + " but first... " + "=" *  61
user = ask_name # Define "ask_name" method in new file called name.rb.
######### SERACH YELP API #########
######### DISPLAY RESULTS TO USER #########