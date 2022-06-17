require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "johndoe", email: "johndoe@example.com", 
      password: "password")
  end

  test "user should be valid" do
    assert @user.valid?  
  end

  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "user name and email should be unique" do
    @user.save
    @user2 = User.new(name: "johndoe", email: "johndoe@example.com", 
      password: "password")
    assert_not @user2.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 101
    assert_not @user.valid?
  end

  test "user name should not be too short" do
    @user.name = "a" * 2
    assert_not @user.valid?    
  end

end