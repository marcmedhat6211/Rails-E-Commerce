require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save category without name" do
    category = Category.new
    assert_not category.save, "saved the category without a name"
  end 

end
