require 'test_helper'

class WordTest < ActiveSupport::TestCase
	def setup
		@word = Word.new
		@word_one = words(:humour)
	end
	test "should not save words without name and meaning" do
		assert_not @word.save
	end
	test "should not save words with long title and name" do
		@word.title = "a"*16
		@word.meaning = "a" * 16
		assert_not @word.save
	end
	test "should not allow duplicate title" do
		@word = @word_one.dup
		assert_not @word.save
	end
end

