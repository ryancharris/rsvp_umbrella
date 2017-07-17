defmodule RsvpWeb.EventViewTest do
  use RsvpWeb.ConnCase, async: true

  test "Should convert a date to MM/DD/YYYY format" do
    date = Ecto.DateTime.from_erl{{2016, 12, 03}, {00, 00, 00}}
    formatted = RsvpWeb.EventView.format_date(date)

    assert formatted == "12/03/2016"
  end

  @tag current: true
  test "Should convert time to HH:MM" do
    time = Ecto.DateTime.from_erl{{0000, 00, 00}, {1, 25, 45}}
    formatted = RsvpWeb.EventView.format_time(time)

    assert formatted == "01:25"
  end

end
