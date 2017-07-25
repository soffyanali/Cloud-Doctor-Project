require 'test_helper'

class DtrecordsControllerTest < ActionController::TestCase
  setup do
    @dtrecord = dtrecords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dtrecords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dtrecord" do
    assert_difference('Dtrecord.count') do
      post :create, dtrecord: { age: @dtrecord.age, clinic: @dtrecord.clinic, name: @dtrecord.name, references: @dtrecord.references, string: @dtrecord.string, string: @dtrecord.string, string: @dtrecord.string, user: @dtrecord.user }
    end

    assert_redirected_to dtrecord_path(assigns(:dtrecord))
  end

  test "should show dtrecord" do
    get :show, id: @dtrecord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dtrecord
    assert_response :success
  end

  test "should update dtrecord" do
    patch :update, id: @dtrecord, dtrecord: { age: @dtrecord.age, clinic: @dtrecord.clinic, name: @dtrecord.name, references: @dtrecord.references, string: @dtrecord.string, string: @dtrecord.string, string: @dtrecord.string, user: @dtrecord.user }
    assert_redirected_to dtrecord_path(assigns(:dtrecord))
  end

  test "should destroy dtrecord" do
    assert_difference('Dtrecord.count', -1) do
      delete :destroy, id: @dtrecord
    end

    assert_redirected_to dtrecords_path
  end
end
