unless (Rsvp.EventQueries.any) do
  Rsvp.EventQueries.create(
    Rsvp.Events.changeset(
      %Rsvp.Events{},
      %{
        date: "2017-08-01 12:00:00",
        title: "Summer Codefest",
        location: "Omaha, NE"
      }
    )
  )

  Rsvp.EventQueries.create(
    Rsvp.Events.changeset(
      %Rsvp.Events{},
      %{
        date: "2017-08-29 01:00:00",
        title: "Chuck's Birthday",
        location: "London, UK"
      }
    )
  )
end
