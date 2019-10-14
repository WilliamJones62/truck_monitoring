require 'test_helper'

class TruckFinancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_finance = truck_finances(:one)
  end

  test "should get index" do
    get truck_finances_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_finance_url
    assert_response :success
  end

  test "should create truck_finance" do
    assert_difference('TruckFinance.count') do
      post truck_finances_url, params: { truck_finance: { contract_end: @truck_finance.contract_end, contract_start: @truck_finance.contract_start, contract_type: @truck_finance.contract_type, ez_pass: @truck_finance.ez_pass, flat_rate: @truck_finance.flat_rate, ins_expires: @truck_finance.ins_expires, mile_rate: @truck_finance.mile_rate, user_id: @truck_finance.user_id, wexcard: @truck_finance.wexcard } }
    end

    assert_redirected_to truck_finance_url(TruckFinance.last)
  end

  test "should show truck_finance" do
    get truck_finance_url(@truck_finance)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_finance_url(@truck_finance)
    assert_response :success
  end

  test "should update truck_finance" do
    patch truck_finance_url(@truck_finance), params: { truck_finance: { contract_end: @truck_finance.contract_end, contract_start: @truck_finance.contract_start, contract_type: @truck_finance.contract_type, ez_pass: @truck_finance.ez_pass, flat_rate: @truck_finance.flat_rate, ins_expires: @truck_finance.ins_expires, mile_rate: @truck_finance.mile_rate, user_id: @truck_finance.user_id, wexcard: @truck_finance.wexcard } }
    assert_redirected_to truck_finance_url(@truck_finance)
  end

  test "should destroy truck_finance" do
    assert_difference('TruckFinance.count', -1) do
      delete truck_finance_url(@truck_finance)
    end

    assert_redirected_to truck_finances_url
  end
end
