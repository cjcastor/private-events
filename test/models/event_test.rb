require 'test_helper'

class EventTest < ActiveSupport::TestCase
  def setup
    @event = Event.new(name: "Birthday", event_date: "2017-12-25")
  end

  test "Event upcoming" do
    @event.event_date = "2099-12-25"
    assert_not Event.upcoming(Time.zone.now).nil?
  end

  test "Event past" do
    @event.event_date = "1900-12-25"
    assert_not Event.past(Time.zone.now).nil?
  end

end
