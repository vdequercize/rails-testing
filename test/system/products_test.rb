require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the homepage" do
    # setup
    # exercice
    visit root_url

    # verify
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count

    # teardown
  end

  test "creating anew product" do
    login_as users(:george)
    visit "/products/new"

    fill_in "product_name", with: "Le Wagon"
    fill_in "Product tagline", with: "Change your life, learn to code"

    click_on "Create Product"

    assert_text "Change your life, learn to code"
  end
end
