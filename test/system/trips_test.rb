# frozen_string_literal: true

require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "should create trip" do
    visit trips_url
    click_on "New trip"

    fill_in "Destination", with: @trip.destination_id
    fill_in "Ends on", with: @trip.ends_on
    fill_in "Origin", with: @trip.origin_id
    fill_in "Starts on", with: @trip.starts_on
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "should update Trip" do
    visit trip_url(@trip)
    click_on "Edit this trip", match: :first

    fill_in "Destination", with: @trip.destination_id
    fill_in "Ends on", with: @trip.ends_on
    fill_in "Origin", with: @trip.origin_id
    fill_in "Starts on", with: @trip.starts_on
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "should destroy Trip" do
    visit trip_url(@trip)
    click_on "Destroy this trip", match: :first

    assert_text "Trip was successfully destroyed"
  end
end
