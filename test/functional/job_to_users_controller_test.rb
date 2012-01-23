require 'test_helper'

class JobToUsersControllerTest < ActionController::TestCase
  setup do
    @job_to_user = job_to_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_to_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_to_user" do
    assert_difference('JobToUser.count') do
      post :create, :job_to_user => @job_to_user.attributes
    end

    assert_redirected_to job_to_user_path(assigns(:job_to_user))
  end

  test "should show job_to_user" do
    get :show, :id => @job_to_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @job_to_user.to_param
    assert_response :success
  end

  test "should update job_to_user" do
    put :update, :id => @job_to_user.to_param, :job_to_user => @job_to_user.attributes
    assert_redirected_to job_to_user_path(assigns(:job_to_user))
  end

  test "should destroy job_to_user" do
    assert_difference('JobToUser.count', -1) do
      delete :destroy, :id => @job_to_user.to_param
    end

    assert_redirected_to job_to_users_path
  end
end
