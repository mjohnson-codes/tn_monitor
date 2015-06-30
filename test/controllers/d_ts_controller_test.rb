require 'test_helper'

class DTsControllerTest < ActionController::TestCase
  setup do
    @dt = dts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dt" do
    assert_difference('Dts.count') do
      post :create, dt: { document_name: @dt.document_name, go_live_date: @dt.go_live_date, transfer_id: @dt.transfer_id, version: @dt.version }
    end

    assert_redirected_to dt_path(assigns(:dt))
  end

  test "should show dt" do
    get :show, id: @dt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dt
    assert_response :success
  end

  test "should update dt" do
    patch :update, id: @dt, dt: { document_name: @dt.document_name, go_live_date: @dt.go_live_date, transfer_id: @dt.transfer_id, version: @dt.version }
    assert_redirected_to dt_path(assigns(:dt))
  end

  test "should destroy dt" do
    assert_difference('Dts.count', -1) do
      delete :destroy, id: @dt
    end

    assert_redirected_to dts_index_path
  end
end
