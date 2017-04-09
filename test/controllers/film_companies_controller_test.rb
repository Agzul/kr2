require 'test_helper'

class FilmCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @film_company = film_companies(:one)
  end

  test "should get index" do
    get film_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_film_company_url
    assert_response :success
  end

  test "should create film_company" do
    assert_difference('FilmCompany.count') do
      post film_companies_url, params: { film_company: { country: @film_company.country, name: @film_company.name } }
    end

    assert_redirected_to film_company_url(FilmCompany.last)
  end

  test "should show film_company" do
    get film_company_url(@film_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_film_company_url(@film_company)
    assert_response :success
  end

  test "should update film_company" do
    patch film_company_url(@film_company), params: { film_company: { country: @film_company.country, name: @film_company.name } }
    assert_redirected_to film_company_url(@film_company)
  end

  test "should destroy film_company" do
    assert_difference('FilmCompany.count', -1) do
      delete film_company_url(@film_company)
    end

    assert_redirected_to film_companies_url
  end
end
