require 'test_helper'

class TruckLogisticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_logistic = truck_logistics(:one)
  end

  test "should get index" do
    get truck_logistics_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_logistic_url
    assert_response :success
  end

  test "should create truck_logistic" do
    assert_difference('TruckLogistic.count') do
      post truck_logistics_url, params: { truck_logistic: { hut_expires: @truck_logistic.hut_expires, ifta_expires: @truck_logistic.ifta_expires, medallion_expires: @truck_logistic.medallion_expires, pre_pass: @truck_logistic.pre_pass, reg_expires: @truck_logistic.reg_expires, service_type: @truck_logistic.service_type } }
    end

    assert_redirected_to truck_logistic_url(TruckLogistic.last)
  end

  test "should show truck_logistic" do
    get truck_logistic_url(@truck_logistic)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_logistic_url(@truck_logistic)
    assert_response :success
  end

  test "should update truck_logistic" do
    patch truck_logistic_url(@truck_logistic), params: { truck_logistic: { hut_expires: @truck_logistic.hut_expires, ifta_expires: @truck_logistic.ifta_expires, medallion_expires: @truck_logistic.medallion_expires, pre_pass: @truck_logistic.pre_pass, reg_expires: @truck_logistic.reg_expires, service_type: @truck_logistic.service_type } }
    assert_redirected_to truck_logistic_url(@truck_logistic)
  end

  test "should destroy truck_logistic" do
    assert_difference('TruckLogistic.count', -1) do
      delete truck_logistic_url(@truck_logistic)
    end

    assert_redirected_to truck_logistics_url
  end
end
