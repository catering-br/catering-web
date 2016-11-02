require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { attendants: @event.attendants, consumer: @event.consumer, duration: @event.duration, endereço: @event.endereço, estimated_price_from: @event.estimated_price_from, estimated_price_until: @event.estimated_price_until, event_data: @event.event_data, hour: @event.hour } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { attendants: @event.attendants, consumer: @event.consumer, duration: @event.duration, endereço: @event.endereço, estimated_price_from: @event.estimated_price_from, estimated_price_until: @event.estimated_price_until, event_data: @event.event_data, hour: @event.hour } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
