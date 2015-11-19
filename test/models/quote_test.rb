require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "unique_tag" do
  	quote = FactoryGirl.create(:quote, :author => "Bonga Saluda")
  	expected = "BS#" + quote.id.to_s
  	actual = quote.unique_tag
  	#trigger "unique_tag" method on the test record of the database.
  	assert_equal expected, actual 
  	#A method called "assert_equal" cause the test to fail if two values are not equal
  end
end
