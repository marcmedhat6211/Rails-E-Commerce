require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save order without status" do
    order = Order.new
    assert_not order.save, "saved the order without a status"
  end

end
