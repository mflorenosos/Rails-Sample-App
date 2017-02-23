require 'test_helper'

class Admin::ContactsControllerTest < ActionDispatch::IntegrationTest
   test 'should get the admin contacts page' do
    get admin_contacts_url
  	assert_response 200
  end

  test 'should get the new contacts page' do
    get new_admin_contact_url
  	assert_response 200
  end

  test 'should create new contact' do
  	assert_difference('Contact.count') do
      post admin_contacts_url, contact: { email: 'email@test.com', full_name: 'Firstname Lastname' }
    end

  	assert_response 302
  end

  test 'should create error upon creation of contact' do
  	post admin_contacts_url, contact: {email: '', full_name: 'Fullname Lastname'}
  	assert_response 400

  	post admin_contacts_url, contact:{email: 'test@email.com', full_name: ''}
  	assert_response 400

  	madz = contacts(:madz)

  	post admin_contacts_url, contact:{email: madz.email, full_name: 'Fullname Lastname'}
  	assert_response 400


  end

end
