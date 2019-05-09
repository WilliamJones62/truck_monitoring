require "application_system_test_case"

class TrucksTest < ApplicationSystemTestCase
  setup do
    @truck = trucks(:one)
  end

  test "visiting the index" do
    visit trucks_url
    assert_selector "h1", text: "Trucks"
  end

  test "creating a Truck" do
    visit trucks_url
    click_on "New Truck"

    fill_in "Acquired", with: @truck.acquired
    check "Camera1" if @truck.camera1
    check "Camera2" if @truck.camera2
    check "Camera3" if @truck.camera3
    fill_in "Deinstall", with: @truck.deinstall
    fill_in "Disposed", with: @truck.disposed
    check "Dvr" if @truck.dvr
    fill_in "Install", with: @truck.install
    fill_in "Install company", with: @truck.install_company
    fill_in "Location", with: @truck.location
    fill_in "Notes", with: @truck.notes
    fill_in "Temp status", with: @truck.temp_status
    fill_in "Truck", with: @truck.truck_id
    fill_in "Type", with: @truck.type
    fill_in "Video status", with: @truck.video_status
    click_on "Create Truck"

    assert_text "Truck was successfully created"
    click_on "Back"
  end

  test "updating a Truck" do
    visit trucks_url
    click_on "Edit", match: :first

    fill_in "Acquired", with: @truck.acquired
    check "Camera1" if @truck.camera1
    check "Camera2" if @truck.camera2
    check "Camera3" if @truck.camera3
    fill_in "Deinstall", with: @truck.deinstall
    fill_in "Disposed", with: @truck.disposed
    check "Dvr" if @truck.dvr
    fill_in "Install", with: @truck.install
    fill_in "Install company", with: @truck.install_company
    fill_in "Location", with: @truck.location
    fill_in "Notes", with: @truck.notes
    fill_in "Temp status", with: @truck.temp_status
    fill_in "Truck", with: @truck.truck_id
    fill_in "Type", with: @truck.type
    fill_in "Video status", with: @truck.video_status
    click_on "Update Truck"

    assert_text "Truck was successfully updated"
    click_on "Back"
  end

  test "destroying a Truck" do
    visit trucks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Truck was successfully destroyed"
  end
end
