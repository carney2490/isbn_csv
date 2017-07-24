def get_isbn_array_count(isbn_number)
	isbn_array = isbn_number.split("") {
		|s| s.to_i

	}
	isbn_array.count
end

def string_length?(input_num)
	if input_num.length == 10
		true
	else
		false
	end
end

def run_program()
	if string_length? == true
		figure_validity()
	else
		p "Must be 10 digits"
	end
end

def figure_validity(isbn_number)
	isbn_number = isbn_number.split("") {
		|s| s.to_i
	}

	isbn_sum = (isbn_number[0].to_i*10)+(isbn_number[1].to_i*9)+(isbn_number[2].to_i*8)+(isbn_number[3].to_i*7)+(isbn_number[4].to_i*6)+(isbn_number[5].to_i*5)+(isbn_number[6].to_i*4)+(isbn_number[7].to_i*3)+(isbn_number[8]).to_i*2)+isbn_number.fetch[9].to_i

	p isbn_sum 

	if isbn_sum % 11 == 0
		true
	else
		false
	end

end