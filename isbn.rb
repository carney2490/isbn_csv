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
	if string_length == true
		get_isbn()
	else
		p "Must be 10 digits"
	end

end