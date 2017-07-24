require "minitest/autorun"
require_relative "isbn.rb"

class TestISBN < Minitest::Test

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end

	def test_assert_that_result_equals_array
		assert_equal([], check_that_num_is_array())
	end

	def test_assert_that_array_is_10_length
		input_num = 0345676542
		assert_equal(10, check_that_num_is_array(input_num).length)
	end

end