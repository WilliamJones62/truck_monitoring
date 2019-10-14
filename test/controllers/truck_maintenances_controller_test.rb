require 'test_helper'

class TruckMaintenancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_maintenance = truck_maintenances(:one)
  end

  test "should get index" do
    get truck_maintenances_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_maintenance_url
    assert_response :success
  end

  test "should create truck_maintenance" do
    assert_difference('TruckMaintenance.count') do
      post truck_maintenances_url, params: { truck_maintenance: { maint_date: @truck_maintenance.maint_date, out_reason: @truck_maintenance.out_reason, service_in: @truck_maintenance.service_in, service_out: @truck_maintenance.service_out, service_status: @truck_maintenance.service_status, truck_id: @truck_maintenance.truck_id } }
    end

    assert_redirected_to truck_maintenance_url(TruckMaintenance.last)
  end

  test "should show truck_maintenance" do
    get truck_maintenance_url(@truck_maintenance)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_maintenance_url(@truck_maintenance)
    assert_response :success
  end

  test "should update truck_maintenance" do
    patch truck_maintenance_url(@truck_maintenance), params: { truck_maintenance: { maint_date: @truck_maintenance.maint_date, out_reason: @truck_maintenance.out_reason, service_in: @truck_maintenance.service_in, service_out: @truck_maintenance.service_out, service_status: @truck_maintenance.service_status, truck_id: @truck_maintenance.truck_id } }
    assert_redirected_to truck_maintenance_url(@truck_maintenance)
  end

  test "should destroy truck_maintenance" do
    assert_difference('TruckMaintenance.count', -1) do
      delete truck_maintenance_url(@truck_maintenance)
    end

    assert_redirected_to truck_maintenances_url
  end
end
