class Yelp

	attr_accessor :user, :location, :user_selection

	def initialize(user, location)
		@user = user
		@location = location
		@user_selection = user_selection
	end

	def search_query
		puts "Cool #{@user} looks like you are looking for businesses in #{@location}."
		puts "#{@user} please select one of the following options. Enter either a 1 or a 2 on your keyboard."
		puts "Type \"1\" - To find top stuff around you."
		puts "Type \"2\" - To query specific search terms like: pizza, osteopath or pub."
		@user_selection = gets.chomp.capitalize
		user_choose(@user_selection)
	end

end