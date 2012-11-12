require 'test_helper'

class SupplierProductsControllerTest < ActionController::TestCase
  setup do
    @supplier_product = supplier_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplier_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier_product" do
    assert_difference('SupplierProduct.count') do
      post :create, supplier_product: @supplier_product.attributes
    end

    assert_redirected_to supplier_product_path(assigns(:supplier_product))
  end

  test "should show supplier_product" do
    get :show, id: @supplier_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier_product
    assert_response :success
  end

  test "should update supplier_product" do
    put :update, id: @supplier_product, supplier_product: @supplier_product.attributes
    assert_redirected_to supplier_product_path(assigns(:supplier_product))
  end

  test "should destroy supplier_product" do
    assert_difference('SupplierProduct.count', -1) do
      delete :destroy, id: @supplier_product
    end

    assert_redirected_to supplier_products_path
  end
end
