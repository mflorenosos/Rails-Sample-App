require 'test_helper'

class Admin::ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @craig = contacts(:craig)
  end

  test 'should get the admin contacts page' do
    get admin_contacts_url
    assert_response 200
  end

  test 'should get the admin new contact page' do
    get new_admin_contact_url
    assert_response 200
  end

  test 'should create a contact' do
    assert_difference('Contact.count') do
      post admin_contacts_url, params: { contact: { email: 'email@test.com', full_name: 'Firstname Lastname' } }
    end

    assert_response 302
  end

  test 'should show the admin contact' do
    get admin_contact_url(@craig.id)
    assert_response 200
  end

  test 'should return error on contact creation' do
    post admin_contacts_url, params: { contact: { email: '', full_name: 'Fullname Lastname' } }
    assert_response 400

    post admin_contacts_url, params: { contact: { email: 'email@test.com', full_name: '' } }
    assert_response 400

    post admin_contacts_url, params: { contact: { email: @craig.email, full_name: 'Fullname Lastname' } }
    assert_response 400
  end

  test 'should show the contact' do
    get edit_admin_contact_path(@craig)
    assert_response 200
  end

  test 'should show page not found when contact does not exist' do
    get edit_admin_contact_path(0)
    assert_response 404
  end

  test 'should update contact' do
    patch admin_contact_url(@craig), params: { contact: { email: 'email_new@test.com' } }
    assert_response 302
  end

  test 'should not update contact' do
    mirinda = contacts(:mirinda)

    patch admin_contact_url(@craig), params: { contact: { email: '' } }
    assert_response 400

    patch admin_contact_url(@craig), params: { contact: { email: mirinda.email } }
    assert_response 400

    patch admin_contact_url(@craig), params: { contact: { full_name: '' } }
    assert_response 400
  end

  test 'should destroy contact' do
    assert_difference('Contact.count', -1) do
      delete admin_contact_url(@craig)
    end

    assert_response 302
  end
end
