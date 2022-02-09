require "test_helper"

class ListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:lon_brs_trip)
    @list = lists(:packing_list)
    @list_item = list_items(:suitcase_list_item)
  end

  test "should get index" do
    get trip_list_list_items_url(@trip, @list)

    assert_response :success
  end

  test "should get new" do
    get new_trip_list_list_item_url(@trip, @list)

    assert_response :success
  end

  test "should create list_item" do
    assert_difference("ListItem.count") do
      post trip_list_list_items_url(@trip, @list), params: { list_item: { title: "New Item" } }
    end

    assert_redirected_to trip_list_url(@trip, @list)
  end

  test "should show list_item" do
    get trip_list_list_item_url(@list_item.trip, @list_item.list, @list_item)

    assert_response :success
  end

  test "should get edit" do
    get edit_trip_list_list_item_url(@trip, @list, @list_item)

    assert_response :success
  end

  test "should update list_item" do
    patch trip_list_list_item_url(@list_item.trip, @list_item.list, @list_item),
          params: { list_item: { title: "Updated Title" } }

    assert_redirected_to trip_list_url(@list_item.trip, @list_item.list)
  end

  test "should destroy list_item" do
    assert_difference("ListItem.count", -1) do
      delete trip_list_list_item_url(@list_item.trip, @list_item.list, @list_item)
    end

    assert_redirected_to trip_list_url(@list_item.trip, @list_item.list)
  end
end
