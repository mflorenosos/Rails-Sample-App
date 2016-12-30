require 'test_helper'

class About::GreetingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get the about greetings page' do
    get about_greetings_url
  	assert_response 200
  end

end
