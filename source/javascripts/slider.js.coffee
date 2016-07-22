$ ->
  PRICES = [5000, 8000, 10000, 20000, 50000, 80000, 100000]

  addDelimeter = (number) ->
    number.toString().replace /(.*)(\d{3})/, ->
      [].slice.call(arguments, 1,3).join(',')

  $('#slider-range').slider
    range: true
    min: 0
    max: 6
    values: [2, 5]

    slide: (event, ui) ->
      sliderMin = PRICES[ui.values[0]]
      sliderMax = PRICES[ui.values[1]]

      formatedMaxRange = addDelimeter(sliderMax)
      formatedMinRange = addDelimeter(sliderMin)

      $('.amount').html("$#{formatedMinRange} - $#{formatedMaxRange}")

      $("[data-js=select-min] option[value=#{sliderMin}]").attr(
        "selected", "selected")
      $("[data-js=select-max] option[value=#{sliderMax}]").attr(
        "selected", "selected")
      return
  return
