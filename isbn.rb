def get_isbn_array_count(user_isbn)
	isbn_array = user_isbn.split("") {
		|s| s.to_i

	}
	isbn_array.count
end

def string_length?(user_isbn)
	if user_isbn.length == 10
		true
	else
		false
	end
end

def run_program(user_isbn)
	if string_length?(user_isbn) == true
		figure_validity(user_isbn)
		
	else
		p "Must be 10 digits"
	end
end

def figure_validity(user_isbn)
	isbn_number = user_isbn.split("") {
		|s| s.to_i
	}
	isbn_length = isbn_number.count
	counter = 0
	multiple = 10
	sum = 0

	isbn_length.times do 
		sum = sum + (isbn_number[counter].to_i * multiple)
		counter = counter + 1
		multiple = multiple - 1
	end

	# (isbn_number[0].to_i*10)+(isbn_number[1].to_i*9)+(isbn_number[2].to_i*8)+(isbn_number[3].to_i*7)+(isbn_number[4].to_i*6)+(isbn_number[5].to_i*5)+(isbn_number[6].to_i*4)+(isbn_number[7].to_i*3)+(isbn_number[8]).to_i*2)+isbn_number.fetch[9].to_i

	if sum % 11 == 0
		p "Congrats your ISBN number is valid"
		true

	else
		p "Your isbn is invalid"
		false
	end

end

def user_isbn()
puts "What is your isbn number?"
user_isbn = gets.chomp
run_program(user_isbn)

end
