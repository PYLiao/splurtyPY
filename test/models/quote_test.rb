require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "unique_tag" do
    quote = Quote.create(author: 'Po-Yang Liao', saying: 'You only yolo once')
    expected = 'PL#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end

end
