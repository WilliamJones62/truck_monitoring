require 'test_helper'

class TruckAccidentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_accident = truck_accidents(:one)
  end

  test "should get index" do
    get truck_accidents_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_accident_url
    assert_response :success
  end

  test "should create truck_accident" do
    assert_difference('TruckAccident.count') do
      post truck_accidents_url, params: { truck_accident: { accident_date: @truck_accident.accident_date, accident_detail: @truck_accident.accident_detail, accident_time: @truck_accident.accident_time, claim: @truck_accident.claim, costs: @truck_accident.costs, damage_estimate: @truck_accident.damage_estimate, dot_recordable: @truck_accident.dot_recordable, driver: @truck_accident.driver, injury: @truck_accident.injury, location: @truck_accident.location, report_filed: @truck_accident.report_filed, towed: @truck_accident.towed, truck_id: @truck_accident.truck_id } }
    end

    assert_redirected_to truck_accident_url(TruckAccident.last)
  end

  test "should show truck_accident" do
    get truck_accident_url(@truck_accident)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_accident_url(@truck_accident)
    assert_response :success
  end

  test "should update truck_accident" do
    patch truck_accident_url(@truck_accident), params: { truck_accident: { accident_date: @truck_accident.accident_date, accident_detail: @truck_accident.accident_detail, accident_time: @truck_accident.accident_time, claim: @truck_accident.claim, costs: @truck_accident.costs, damage_estimate: @truck_accident.damage_estimate, dot_recordable: @truck_accident.dot_recordable, driver: @truck_accident.driver, injury: @truck_accident.injury, location: @truck_accident.location, report_filed: @truck_accident.report_filed, towed: @truck_accident.towed, truck_id: @truck_accident.truck_id } }
    assert_redirected_to truck_accident_url(@truck_accident)
  end

  test "should destroy truck_accident" do
    assert_difference('TruckAccident.count', -1) do
      delete truck_accident_url(@truck_accident)
    end

    assert_redirected_to truck_accidents_url
  end
end
