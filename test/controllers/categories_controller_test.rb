require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @continent = Continent.create(name: "North America")
    @category = @continent.categories.create!(title: "fla", sort: 10, published: false )
    @admin_user = User.create(name: "johndoe", email: "johndoe@example.com", 
                              password: "password", admin: true)
  end

  test "should get new" do
    sign_in_as(@admin_user)
    get new_continent_category_url(@continent)
    assert_response :success    
  end

  test "should create category" do
    sign_in_as(@admin_user)
    assert_difference('@continent.categories.count', 1) do
      post continent_categories_url(@continent), params: { category: { title: "Florida", sort: 10, published: false } }
    end
    assert_redirected_to continent_url(@continent)
  end

  test "should edit category" do
    sign_in_as(@admin_user)
    get edit_category_url(@category)
    assert_response :success  
  end

  test "should update category" do
    sign_in_as(@admin_user)
    patch category_url(@category), params: { category: { title: "Florida", sort: 5, published: false } }
    assert_redirected_to continent_url(@continent)   
  end

  test "should destroy category" do
    sign_in_as(@admin_user)
    assert_difference('@continent.categories.count', -1) do
      delete category_url(@category)
    end
    assert_redirected_to continent_url(@continent)    
  end
end