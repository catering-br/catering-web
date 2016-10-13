require 'test_helper'

class CategoryProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_product = category_products(:one)
  end

  test "should get index" do
    get category_products_url
    assert_response :success
  end

  test "should get new" do
    get new_category_product_url
    assert_response :success
  end

  test "should create category_product" do
    assert_difference('CategoryProduct.count') do
      post category_products_url, params: { category_product: { name: @category_product.name } }
    end

    assert_redirected_to category_product_url(CategoryProduct.last)
  end

  test "should show category_product" do
    get category_product_url(@category_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_product_url(@category_product)
    assert_response :success
  end

  test "should update category_product" do
    patch category_product_url(@category_product), params: { category_product: { name: @category_product.name } }
    assert_redirected_to category_product_url(@category_product)
  end

  test "should destroy category_product" do
    assert_difference('CategoryProduct.count', -1) do
      delete category_product_url(@category_product)
    end

    assert_redirected_to category_products_url
  end
end
