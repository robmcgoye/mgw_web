require "test_helper"

class ContactFormsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get contact form" do
    get new_contact_form_url
    assert_response :success
  end
  
end