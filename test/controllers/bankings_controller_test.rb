require 'test_helper'

class BankingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banking = bankings(:one)
  end

  test "should get index" do
    get bankings_url
    assert_response :success
  end

  test "should get new" do
    get new_banking_url
    assert_response :success
  end

  test "should create banking" do
    assert_difference('Banking.count') do
      post bankings_url, params: { banking: { account: @banking.account, agency: @banking.agency, bank: @banking.bank, professional_id: @banking.professional_id } }
    end

    assert_redirected_to banking_url(Banking.last)
  end

  test "should show banking" do
    get banking_url(@banking)
    assert_response :success
  end

  test "should get edit" do
    get edit_banking_url(@banking)
    assert_response :success
  end

  test "should update banking" do
    patch banking_url(@banking), params: { banking: { account: @banking.account, agency: @banking.agency, bank: @banking.bank, professional_id: @banking.professional_id } }
    assert_redirected_to banking_url(@banking)
  end

  test "should destroy banking" do
    assert_difference('Banking.count', -1) do
      delete banking_url(@banking)
    end

    assert_redirected_to bankings_url
  end
end
