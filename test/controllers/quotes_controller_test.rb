require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "quote show page" do
  	quote = Quote.create(:author => 'Bonga Liao', :saying => 'Say hallo to you.')
  	get :show, :id => quote.id
  	assert_response :success
  end

  test "quote show page, not found" do
  	get :show, :id => 'OMG'
  	assert_response :not_found
  end
end
