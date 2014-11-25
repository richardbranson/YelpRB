# declare new method
# ask for user input
# return user input and remove extra white space and line return
# check if user enters a proper name. if less than 2 letters ask if that is their name.

def ask_name
	puts "=" * 5 + " What's your name?" + "." *  57
	name = gets.chomp.capitalize
	if name.length <= 2
		puts "=" * 5 + " Humm... seems a it short. Are you sure that is your name? (Y/N)"
		name_confirm = gets.chomp
			if name_confirm.downcase == "y"
				puts "=" * 5 + " Great, #{name}! Let's get started."
			else name_confirm.downcase == "n"
					puts "=" * 5 + " Well if you are not going to give me your name I'm going to call you Richard Branson for now!"
					name = "Richard Branson"
			end
	else
		puts "=" * 5 + " Great, #{name}! Let's get started."
	end
	return name
end
