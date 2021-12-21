require 'test_helper'

class HappyNumberTest < ActiveSupport::TestCase

    test 'save data' do
      tester = HappyNumber.new
      assert tester.save 
    end

    test 'new data' do
      tester = HappyNumber.new
      tester.number = 499
      tester.result = "0"
      assert tester.save
     end 
end
