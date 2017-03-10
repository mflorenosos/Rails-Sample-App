require 'test_helper'

class About::GreetingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get the about greetings page' do
    get about_greetings_url
    assert_response 200
  end

  test 'should get the greet me page' do
    greet_me_params = { greet_me: 'morning' }

    get about_greet_me_url(greet_me_params)
    assert_response 200
  end

  test 'should return not found page if greetings is invalid' do
    greet_me_params = { greet_me: 'invalid_greetings' }

    get about_greet_me_url(greet_me_params)
    assert_response 404
  end
end
