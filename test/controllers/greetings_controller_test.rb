require 'test_helper'

class GreetingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get the about greetings page' do
    get morning_greetings_url
  	assert_response 200
  end

end
