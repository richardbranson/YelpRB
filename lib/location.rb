def get_location
	sleep 1
	puts "Where are you now? Accepts:(City, County or Post Code)"
	location = gets.chomp.capitalize.gsub(" ", "+") # Get user input and asign it to location
end