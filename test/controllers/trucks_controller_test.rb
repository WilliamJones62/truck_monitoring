require 'test_helper'

class TrucksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck = trucks(:one)
  end

  test "should get index" do
    get trucks_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_url
    assert_response :success
  end

  test "should create truck" do
    assert_difference('Truck.count') do
      post trucks_url, params: { truck: { acquired: @truck.acquired, camera1: @truck.camera1, camera2: @truck.camera2, camera3: @truck.camera3, deinstall: @truck.deinstall, disposed: @truck.disposed, dvr: @truck.dvr, install: @truck.install, install_company: @truck.install_company, location: @truck.location, notes: @truck.notes, temp_status: @truck.temp_status, truck_id: @truck.truck_id, type: @truck.type, video_status: @truck.video_status } }
    end

    assert_redirected_to truck_url(Truck.last)
  end

  test "should show truck" do
    get truck_url(@truck)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_url(@truck)
    assert_response :success
  end

  test "should update truck" do
    patch truck_url(@truck), params: { truck: { acquired: @truck.acquired, camera1: @truck.camera1, camera2: @truck.camera2, camera3: @truck.camera3, deinstall: @truck.deinstall, disposed: @truck.disposed, dvr: @truck.dvr, install: @truck.install, install_company: @truck.install_company, location: @truck.location, notes: @truck.notes, temp_status: @truck.temp_status, truck_id: @truck.truck_id, type: @truck.type, video_status: @truck.video_status } }
    assert_redirected_to truck_url(@truck)
  end

  test "should destroy truck" do
    assert_difference('Truck.count', -1) do
      delete truck_url(@truck)
    end

    assert_redirected_to trucks_url
  end
end
