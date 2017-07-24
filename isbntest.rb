require "minitest/autorun"
require_relative "isbn.rb"

class TestISBN < Minitest::Test

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end

	def test_for_string_length
		isbn_array = "1234567890"
		assert_equal(true, string_length?(isbn_array))
	end

	def test_for_string_length_false
		isbn_array = "1234567890000"
		assert_equal(false, string_length?(isbn_array))
	end

	def test_for_array_length
		isbn_array = "1234567890"
		assert_equal(10, get_isbn_array_count(isbn_array))
	end
end