require 'test_helper'

class StoresControllerTest < ActionController::TestCase
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store" do
    assert_difference('Store.count') do
      post :create, store: { advertising_end_date: @store.advertising_end_date, advertising_start_date: @store.advertising_start_date, branded_name: @store.branded_name, city: @store.city, client_id: @store.client_id, contact_email: @store.contact_email, contact_name: @store.contact_name, facility_number: @store.facility_number, logo_url: @store.logo_url, marketing_number: @store.marketing_number, state: @store.state, status_code: @store.status_code, street: @store.street, url: @store.url, zip: @store.zip }
    end

    assert_redirected_to store_path(assigns(:store))
  end

  test "should show store" do
    get :show, id: @store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store
    assert_response :success
  end

  test "should update store" do
    patch :update, id: @store, store: { advertising_end_date: @store.advertising_end_date, advertising_start_date: @store.advertising_start_date, branded_name: @store.branded_name, city: @store.city, client_id: @store.client_id, contact_email: @store.contact_email, contact_name: @store.contact_name, facility_number: @store.facility_number, logo_url: @store.logo_url, marketing_number: @store.marketing_number, state: @store.state, status_code: @store.status_code, street: @store.street, url: @store.url, zip: @store.zip }
    assert_redirected_to store_path(assigns(:store))
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete :destroy, id: @store
    end

    assert_redirected_to client_stores_path
  end
end
