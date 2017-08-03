require 'test_helper'

class DoctorprofilesControllerTest < ActionController::TestCase
  setup do
    @doctorprofile = doctorprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctorprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctorprofile" do
    assert_difference('Doctorprofile.count') do
      post :create, doctorprofile: { clinic: @doctorprofile.clinic, firstname: @doctorprofile.firstname, lastname: @doctorprofile.lastname, qualification: @doctorprofile.qualification, user_id: @doctorprofile.user_id }
    end

    assert_redirected_to doctorprofile_path(assigns(:doctorprofile))
  end

  test "should show doctorprofile" do
    get :show, id: @doctorprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctorprofile
    assert_response :success
  end

  test "should update doctorprofile" do
    patch :update, id: @doctorprofile, doctorprofile: { clinic: @doctorprofile.clinic, firstname: @doctorprofile.firstname, lastname: @doctorprofile.lastname, qualification: @doctorprofile.qualification, user_id: @doctorprofile.user_id }
    assert_redirected_to doctorprofile_path(assigns(:doctorprofile))
  end

  test "should destroy doctorprofile" do
    assert_difference('Doctorprofile.count', -1) do
      delete :destroy, id: @doctorprofile
    end

    assert_redirected_to doctorprofiles_path
  end
end
