$ ->
  PRICES = [0, 2000, 5000, 8000, 10000, 20000, 50000, 80000, 100000]

  $('#slider-range').slider
    range: true
    min: 0
    max: 8
    values: [2, 5]

    slide: (event, ui) ->
      sliderMin = PRICES[ui.values[0]]
      sliderMax = PRICES[ui.values[1]]

      $('.amount').html('$' + sliderMin + ' - $' + sliderMax)

      $("[data-js=select-min] option[value=#{sliderMin}]").attr(
        "selected", "selected")
      $("[data-js=select-max] option[value=#{sliderMax}]").attr(
        "selected", "selected")
      return
  return
