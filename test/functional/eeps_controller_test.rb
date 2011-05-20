require 'test_helper'

class EepsControllerTest < ActionController::TestCase
  setup do
    @eep = eeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eep" do
    assert_difference('Eep.count') do
      post :create, :eep => @eep.attributes
    end

    assert_redirected_to eep_path(assigns(:eep))
  end

  test "should show eep" do
    get :show, :id => @eep.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @eep.to_param
    assert_response :success
  end

  test "should update eep" do
    put :update, :id => @eep.to_param, :eep => @eep.attributes
    assert_redirected_to eep_path(assigns(:eep))
  end

  test "should destroy eep" do
    assert_difference('Eep.count', -1) do
      delete :destroy, :id => @eep.to_param
    end

    assert_redirected_to eeps_path
  end
end
