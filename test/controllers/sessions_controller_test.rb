require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @admin_user = User.create(name: "johndoe", email: "johndoe@example.com", 
      password: "password", admin: true)
  end

  test "should get login page" do
    get login_url
    assert_response :success
  end

  test "should login user" do
    post login_url, params: { session: { email: "johndoe@example.com", password: "password"} }
    assert_redirected_to root_url
  end

  test "should logout user" do
    delete logout_url
    assert_redirected_to root_url
  end

end 