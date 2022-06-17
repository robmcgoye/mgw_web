require "test_helper"

class SubfoldersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @continent = Continent.create(name: "North America")
    @category = @continent.categories.create!(title: "fla", sort: 10, published: false )
    @subfolder = @category.subfolders.create!(title: "everglades", sort: 5, published: false)
    @admin_user = User.create(name: "johndoe", email: "johndoe@example.com", 
                              password: "password", admin: true)
  end

  test "should get new" do
    sign_in_as(@admin_user)
    get new_category_subfolder_url(@category)
    assert_response :success    
  end

  test "should create subfolder" do
    sign_in_as(@admin_user)
    assert_difference('@category.subfolders.count', 1) do
      post category_subfolders_url(@category), params: { category: { title: "VB", sort: 10, published: false } }
    end
    assert_redirected_to continent_url(@continent)
  end

  test "should edit subfolder" do
    sign_in_as(@admin_user)
    get edit_subfolder_url(@subfolder)
    assert_response :success  
  end

  test "should update subfolder" do
    sign_in_as(@admin_user)
    patch subfolder_url(@subfolder), params: { category: { title: "EG", sort: 5, published: false } }
    assert_redirected_to continent_url(@continent)   
  end

  test "should destroy subfolder" do
    sign_in_as(@admin_user)
    assert_difference('@category.subfolders.count', -1) do
      delete subfolder_url(@subfolder)
    end
    assert_redirected_to continent_url(@continent)    
  end

end