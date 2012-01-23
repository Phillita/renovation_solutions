require 'test_helper'

class QuoteAuditsControllerTest < ActionController::TestCase
  setup do
    @quote_audit = quote_audits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quote_audits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote_audit" do
    assert_difference('QuoteAudit.count') do
      post :create, :quote_audit => @quote_audit.attributes
    end

    assert_redirected_to quote_audit_path(assigns(:quote_audit))
  end

  test "should show quote_audit" do
    get :show, :id => @quote_audit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @quote_audit.to_param
    assert_response :success
  end

  test "should update quote_audit" do
    put :update, :id => @quote_audit.to_param, :quote_audit => @quote_audit.attributes
    assert_redirected_to quote_audit_path(assigns(:quote_audit))
  end

  test "should destroy quote_audit" do
    assert_difference('QuoteAudit.count', -1) do
      delete :destroy, :id => @quote_audit.to_param
    end

    assert_redirected_to quote_audits_path
  end
end
