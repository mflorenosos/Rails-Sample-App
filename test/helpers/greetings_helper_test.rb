require 'test_helper'

class GreetingsHelperTest < ActionView::TestCase
  test 'should return valid greetings' do
    assert_equal 'Good morning!', display_greetings('morning', 200)
  end

  test 'should return invalid greetings' do
    assert_equal 'You have an invalid greeting!', display_greetings('invalid_greetings', 404)
  end
end
