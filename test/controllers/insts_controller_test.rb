require 'test_helper'

class InstsControllerTest < ActionController::TestCase
  setup do
    @inst = insts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inst" do
    assert_difference('Inst.count') do
      post :create, inst: { color: @inst.color, cost: @inst.cost, description: @inst.description, firstname: @inst.firstname, lastname: @inst.lastname, manufacturer: @inst.manufacturer }
    end

    assert_redirected_to inst_path(assigns(:inst))
  end

  test "should show inst" do
    get :show, id: @inst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inst
    assert_response :success
  end

  test "should update inst" do
    patch :update, id: @inst, inst: { color: @inst.color, cost: @inst.cost, description: @inst.description, firstname: @inst.firstname, lastname: @inst.lastname, manufacturer: @inst.manufacturer }
    assert_redirected_to inst_path(assigns(:inst))
  end

  test "should destroy inst" do
    assert_difference('Inst.count', -1) do
      delete :destroy, id: @inst
    end

    assert_redirected_to insts_path
  end
end
