jQuery ->
  $('#location_city').autocomplete
    source: $('#location_city').data('autocomplete-source')
