while true
	random_number = rand(10)
	puts "Type your guess"
	guess = gets.to_i

	if guess == random_number
		puts "Yeah, you're right!" 
	elsif guess < random_number	
		puts "Too low!" 
	else
		puts "Too high" if guess > random_number
	end
end
