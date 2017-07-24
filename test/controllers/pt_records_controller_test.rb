require 'test_helper'

class PtRecordsControllerTest < ActionController::TestCase
  setup do
    @pt_record = pt_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pt_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pt_record" do
    assert_difference('PtRecord.count') do
      post :create, pt_record: { birthdate: @pt_record.birthdate, email: @pt_record.email, firstname: @pt_record.firstname, infection: @pt_record.infection, lastname: @pt_record.lastname, string: @pt_record.string }
    end

    assert_redirected_to pt_record_path(assigns(:pt_record))
  end

  test "should show pt_record" do
    get :show, id: @pt_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pt_record
    assert_response :success
  end

  test "should update pt_record" do
    patch :update, id: @pt_record, pt_record: { birthdate: @pt_record.birthdate, email: @pt_record.email, firstname: @pt_record.firstname, infection: @pt_record.infection, lastname: @pt_record.lastname, string: @pt_record.string }
    assert_redirected_to pt_record_path(assigns(:pt_record))
  end

  test "should destroy pt_record" do
    assert_difference('PtRecord.count', -1) do
      delete :destroy, id: @pt_record
    end

    assert_redirected_to pt_records_path
  end
end
