App.reservations = App.cable.subscriptions.create "ReservationsChannel",
  connected: ->
    console.log('Connected')

  disconnected: ->
    console.log('Disconnected')

  received: ({ reservation }) ->
    $('[data-table='+ reservation.table_id+']')
      .find('[data-empty]')
      .slice(0, reservation.number)
      .text(reservation.firstname+ ' ' +reservation.lastname)
      .removeAttr('data-empty')
