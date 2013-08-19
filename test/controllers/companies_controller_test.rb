require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { constitution_date: @company.constitution_date, extrated_name: @company.extrated_name, forme_juridique: @company.forme_juridique, legilux_url: @company.legilux_url, name: @company.name, reg_commerce_number: @company.reg_commerce_number }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { constitution_date: @company.constitution_date, extrated_name: @company.extrated_name, forme_juridique: @company.forme_juridique, legilux_url: @company.legilux_url, name: @company.name, reg_commerce_number: @company.reg_commerce_number }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
