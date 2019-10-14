require 'test_helper'

class TruckRepairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_repair = truck_repairs(:one)
  end

  test "should get index" do
    get truck_repairs_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_repair_url
    assert_response :success
  end

  test "should create truck_repair" do
    assert_difference('TruckRepair.count') do
      post truck_repairs_url, params: { truck_repair: { maint_date: @truck_repair.maint_date, out_reason: @truck_repair.out_reason, service_in: @truck_repair.service_in, service_out: @truck_repair.service_out, service_status: @truck_repair.service_status, truck_id: @truck_repair.truck_id } }
    end

    assert_redirected_to truck_repair_url(TruckRepair.last)
  end

  test "should show truck_repair" do
    get truck_repair_url(@truck_repair)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_repair_url(@truck_repair)
    assert_response :success
  end

  test "should update truck_repair" do
    patch truck_repair_url(@truck_repair), params: { truck_repair: { maint_date: @truck_repair.maint_date, out_reason: @truck_repair.out_reason, service_in: @truck_repair.service_in, service_out: @truck_repair.service_out, service_status: @truck_repair.service_status, truck_id: @truck_repair.truck_id } }
    assert_redirected_to truck_repair_url(@truck_repair)
  end

  test "should destroy truck_repair" do
    assert_difference('TruckRepair.count', -1) do
      delete truck_repair_url(@truck_repair)
    end

    assert_redirected_to truck_repairs_url
  end
end
