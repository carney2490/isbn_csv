#am
def get_isbn_array_count(user_isbn)
	isbn_array = user_isbn.split("") {
		|s| s.to_i

	}
	isbn_array.count
end

def string_length?(user_isbn)
	if user_isbn.length == 10 || user_isbn.length == 13
		true
	else
		false
	end
end

def check_string_length(user_isbn)
	if user_isbn.length == 10
		"ten"
	elsif user_isbn.length == 13
		"thirteen"
	# else "Your ISBN number is invalid"
	end
end

def run_program(user_isbn)
	if check_string_length(user_isbn) == "ten"
		figure_validity(user_isbn)
	elsif check_string_length(user_isbn) == "thirteen"
		figure_validity_for_isbn_13(user_isbn)
	else
		p "Must be 10 or 13 digits"
	end
end

def figure_validity_for_isbn_13(user_isbn)
	#using check digit calc method to test validity instead of straight 13 digit mod 10
	isbn_number = user_isbn.split("") {
		|s| s.to_i
	} #takng each piece of string and converting to array integer
	isbn_type = isbn_number.class
	# puts "isbn_number is #{isbn_number}"
	# puts "isbn_number type is #{isbn_type}"

	isbn_length = isbn_number.count
	sum = 0
	counter = 0
	leftover = 0
	isbn_length.times do #do loop for each position in array that does the math
		isbn_number[counter]=isbn_number[counter].to_i
		if counter != 12 #position 12 is check digit that we do not want to include
			if counter % 2 == 0 #checking divisibility by 2 = even nmbr
				sum = sum + isbn_number[counter] #adding the value of each position to the sum
			else 
				sum = sum + isbn_number[counter] * 3 #taking value of each position and multiplying by 3	
			end
		end
		counter = counter + 1 #increasing counter for both conditional statements above

end
	leftover = sum % 10 #dividing by 10 to get the remainder
	check = 10 - leftover #subtracting remainder from 10 to get check digit (13th nmbr = 12 digit)
	if check == isbn_number[12] #comparing the 13th digit (12th position) to the check digit
		puts "Congrats your ISBN number is valid"
		true

	else
		puts "Your isbn is not valid"
		false
	end
	# puts "sum = #{sum}"
	# puts "leftover = #{leftover}"
	# zero_position = isbn_number[0].to_i * 1
	# one_position = isbn_number[1].to_i * 3
	# two_position = isbn_number[2].to_i * 1
	# three_position = isbn_number[3].to_i * 3

	# puts "one position is #{one_position}"

	#s = 9×1 + 7×3 + 8×1 + 0×3 + 3×1 + 0×3 + 6×1 + 4×3 + 0×1 + 6×3 + 1×1 + 5×3

end



def figure_validity(user_isbn) #calculating validity of mod 10 without a check digit calculation comparison
	isbn_number = user_isbn.split("") {
		|s| s.to_i
	} 
	isbn_length = isbn_number.count
	counter = 0 #counter setup for position
	multiple = 10 #first digit is multiplied by 10
	sum = 0

	isbn_length.times do 
		sum = sum + (isbn_number[counter].to_i * multiple)
		counter = counter + 1
		multiple = multiple - 1
	end

	# (isbn_number[0].to_i*10)+(isbn_number[1].to_i*9)+(isbn_number[2].to_i*8)+(isbn_number[3].to_i*7)+(isbn_number[4].to_i*6)+(isbn_number[5].to_i*5)+(isbn_number[6].to_i*4)+(isbn_number[7].to_i*3)+(isbn_number[8]).to_i*2)+isbn_number.fetch[9].to_i

	if sum % 11 == 0 #all 10 digits are included to be sure they are evenly divisible by 11
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
