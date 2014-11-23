class Yelp
	attr_accessor :user, :location, :user_choice

	def initialize(user, location)
		@user = user
		@location = location
		@user_choice = user_choice
	end

	def search_param
		puts "Cool #{@user} looks like you are looking for businesses in #{@location}."
		sleep 2
		puts "#{@user} please select one of the following options. Enter either \"1\" or \"2\" on your keyboard."
		sleep 2
		puts "Type \"1\" - To find top stuff around you."
		sleep 1
		puts "Type \"2\" - To query specific search terms like: pizza, osteopath or pub."
		@user_choice = gets.chomp
		user_choose(@user_choice)
	end

	def user_choose(choice)
		consumer_key = 'EXqni9izHjldC1IUi7ejQg'
		consumer_secret = 'L_vD-sB4bH9Q1uILTJvm09gOhp8'
		token = 'AVXTnXK0IMIZg2s_IgC5WYcz9hNuyPk_'
		token_secret = 'u1WNfc-Crx3ovLyLtM0VvE2-UKc'
		api_host = 'api.yelp.com'

		consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
		access_token = OAuth::AccessToken.new(consumer, token, token_secret)
		if choice == "1"
			puts "Based on the fact that you're in #{@location}, here are the top 10 locations on Yelp we found around you!"
			path = "/v2/search?location=#{@location}&limit=10"
			response = access_token.get(path).body
			parsed = JSON.load(response) 
				parsed["businesses"].each do |place|
				puts place["categories"][0][0].to_s + " | " + place["name"] + " | Address: " + place["location"]["display_address"][0].to_s + "| City: " + place["location"]["city"].to_s
				end
		elsif choice == "2"
			puts "Please enter your search term."
			term = gets.chomp.gsub(" ", "+")
			path = "/v2/search?term=#{term}&location=#{@location}&limit=10"
			response = access_token.get(path).body
			puts "Based on the fact that you're in #{@location}, here are the top 10 locations on Yelp we found for #{term}!"
			parsed = JSON.load(response) 
				parsed["businesses"].each do |place|
				puts place["categories"][0][0].to_s + " | " + place["name"] + " | Address: " + place["location"]["display_address"][0].to_s + "| City: " + place["location"]["city"].to_s
			end
		end
	end
end