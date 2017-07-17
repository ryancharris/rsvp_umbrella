defmodule RsvpWeb.EventView do
  use RsvpWeb.Web, :view

  def format_date(date) do
    {{y, m, d}, _} = Ecto.DateTime.to_erl(date)
    "#{single_to_double_digits(m)}/#{single_to_double_digits(d)}/#{single_to_double_digits(y)}"
  end

  def format_time(date) do
    {_, {h, m, s}} = Ecto.DateTime.to_erl(date)
    "#{single_to_double_digits(h)}:#{single_to_double_digits(m)}"
  end

  def single_to_double_digits(num) do
    case num < 10 do
      true -> "0#{num}"
      false -> num
    end
  end

end
