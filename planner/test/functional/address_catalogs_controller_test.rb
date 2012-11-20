require 'test_helper'

class AddressCatalogsControllerTest < ActionController::TestCase
  setup do
    @address_catalog = address_catalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:address_catalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address_catalog" do
    assert_difference('AddressCatalog.count') do
      post :create, :address_catalog => { :name => @address_catalog.name }
    end

    assert_redirected_to address_catalog_path(assigns(:address_catalog))
  end

  test "should show address_catalog" do
    get :show, :id => @address_catalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @address_catalog
    assert_response :success
  end

  test "should update address_catalog" do
    put :update, :id => @address_catalog, :address_catalog => { :name => @address_catalog.name }
    assert_redirected_to address_catalog_path(assigns(:address_catalog))
  end

  test "should destroy address_catalog" do
    assert_difference('AddressCatalog.count', -1) do
      delete :destroy, :id => @address_catalog
    end

    assert_redirected_to address_catalogs_path
  end
end
