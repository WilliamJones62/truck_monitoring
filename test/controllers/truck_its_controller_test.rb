require 'test_helper'

class TruckItsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_it = truck_its(:one)
  end

  test "should get index" do
    get truck_its_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_it_url
    assert_response :success
  end

  test "should create truck_it" do
    assert_difference('TruckIt.count') do
      post truck_its_url, params: { truck_it: { camera1: @truck_it.camera1, camera2: @truck_it.camera2, camera3: @truck_it.camera3, dvr: @truck_it.dvr, install: @truck_it.install, install_company: @truck_it.install_company, notes: @truck_it.notes, temp_status: @truck_it.temp_status, temp_verified: @truck_it.temp_verified, video_status: @truck_it.video_status } }
    end

    assert_redirected_to truck_it_url(TruckIt.last)
  end

  test "should show truck_it" do
    get truck_it_url(@truck_it)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_it_url(@truck_it)
    assert_response :success
  end

  test "should update truck_it" do
    patch truck_it_url(@truck_it), params: { truck_it: { camera1: @truck_it.camera1, camera2: @truck_it.camera2, camera3: @truck_it.camera3, dvr: @truck_it.dvr, install: @truck_it.install, install_company: @truck_it.install_company, notes: @truck_it.notes, temp_status: @truck_it.temp_status, temp_verified: @truck_it.temp_verified, video_status: @truck_it.video_status } }
    assert_redirected_to truck_it_url(@truck_it)
  end

  test "should destroy truck_it" do
    assert_difference('TruckIt.count', -1) do
      delete truck_it_url(@truck_it)
    end

    assert_redirected_to truck_its_url
  end
end
