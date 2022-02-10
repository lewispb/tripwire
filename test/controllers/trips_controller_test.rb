# frozen_string_literal: true

require "test_helper"

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_as :lewis

    @trip = trips(:lon_brs_trip)
  end

  test "should get index" do
    get trips_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_url
    assert_response :success
  end

  test "should create trip" do
    assert_difference("Trip.count") do
      post trips_url, params: { trip: { ends_on: @trip.ends_on, starts_on: @trip.starts_on } }
    end

    assert_redirected_to trip_url(Trip.last)
  end

  test "should show trip" do
    get trip_url(@trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_url(@trip)
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { ends_on: @trip.ends_on, starts_on: @trip.starts_on } }
    assert_redirected_to trip_url(@trip)
  end

  test "should destroy trip" do
    assert_difference("Trip.count", -1) do
      delete trip_url(@trip)
    end

    assert_redirected_to trips_url
  end
end
