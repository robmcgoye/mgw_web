require "test_helper"

class ContinentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @continents = []
    c = ["North America", "South America", "Africa", "Asia", "Australia"]
    c.each do |continent|
      @continents << Continent.create!( name: continent )
    end
    # @admin_user = User.create(username: "johndoe", email: "johndoe@example.com", 
    #                           password: "password", admin: true)
  end

  test "should get index" do
    get continents_url
    assert_response :success
  end

  test "should show continents" do
    @continents.each do |continent| 
      get continents_url(continent)
      assert_response :success
    end
  end
end
