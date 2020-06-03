require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index works" do
    # Tell the test to: 
    
    # go to the root path "/"
    visit root_path
  
    # assert that there is a <h1> with the text "Products" in this page
    assert_selector "h1", text: "Products"

    # assert that there are elements with the class '.card-product' as many as there are products in the DB
    assert_selector ".card-product", count: Product.count
  end

  test 'a logged in user can create a product' do
    # Tell the test to: 
    
    # log in
    login_as users(:player_one)

    # visit the page to create a new product
    visit '/products/new'

    # fill in the form
    fill_in "product_name",	with: "A wonderful product" 
    fill_in "product_tagline",	with: "A wonderful tagline" 

    # click on the create button
    click_on 'Create Product'

    # test if the test was taken to the product show page
    assert_equal product_path(Product.last), page.current_path

    # test if the product name shows in this page
    assert_text "A wonderful product"

  end
end
