$ ->
  PRICES = [0, 2000, 5000, 8000, 10000, 20000, 50000, 80000, 100000]

  $('#slider-range').slider
    range: true
    min: 0
    max: 8
    values: [
      2
      5
    ]

    slide: (event, ui) ->
      $('.amount').html('$' + PRICES[ui.values[0]] + \
          ' - $' + PRICES[ui.values[1]]);

      sliderMin = '$' + PRICES[ui.values[0]]
      sliderMax = '$' + PRICES[ui.values[1]]
      selectMin = $('[data-js=select-min]').val()
      console.log selectMin
      console.log sliderMin
      console.log sliderMax

      return

  return
