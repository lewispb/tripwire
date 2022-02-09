require "test_helper"

class ListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:lon_brs_trip)
    @list = lists(:packing_list)
  end

  test "gets index" do
    get trip_lists_url(@trip)

    assert_response :success
  end

  test "gets new" do
    get new_trip_list_url(@trip)

    assert_response :success
  end

  test "creates list" do
    assert_difference("List.count") do
      post trip_lists_url(@trip), params: { list: { name: @list.name } }
    end

    assert_redirected_to trip_list_url(@trip, List.last)
  end

  test "shows list" do
    get trip_list_url(@list.trip, @list)

    assert_response :success
  end

  test "gets edit" do
    get edit_trip_list_url(@list.trip, @list)

    assert_response :success
  end

  test "updates list" do
    patch trip_list_url(@list.trip, @list), params: { list: { name: @list.name } }

    assert_redirected_to trip_list_url(@trip)
  end

  test "destroys list" do
    assert_difference("List.count", -1) do
      delete trip_list_url(@list.trip, @list)
    end

    assert_redirected_to trip_lists_url(@list.trip)
  end
end
