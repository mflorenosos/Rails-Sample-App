require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get the home page' do
  	get root_url
  	assert_response :success
  end

  test 'should get the about page' do
  	get about_this_app_url
  	assert_response 200
  end

end

