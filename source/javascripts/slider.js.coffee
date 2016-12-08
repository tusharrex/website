$ ->
  PRICES = [5000, 8000, 10000, 20000, 50000, 80000, 100000]
  sliderElement = $('#slider-range')

  $('#slider-range').slider
    range: true
    min: 0
    max: 6
    values: [2, 5]

    slide: (event, ui) ->
      if ui.values[0] == ui.values[1]
        return false
      sliderMin = PRICES[ui.values[0]]
      sliderMax = PRICES[ui.values[1]]

      formatedMaxRange = addDelimeter(sliderMax)
      formatedMinRange = addDelimeter(sliderMin)

      $('.amount').html("$#{formatedMinRange} - $#{formatedMaxRange}")

      $("[data-js=select-min] option[value=#{sliderMin}]").prop(
        "selected", true)
      $("[data-js=select-max] option[value=#{sliderMax}]").prop(
        "selected", true)
      return

    $(document).ready ->
      formInitialization()
    
    addDelimeter = (number) ->
      number.toString().replace /(.*)(\d{3})/, ->
        [].slice.call(arguments, 1,3).join(',')

    formInitialization = ->
      sliderMin = PRICES[sliderElement.slider("values", 0)]
      sliderMax = PRICES[sliderElement.slider("values", 1)]
      $("[data-js=select-min] option[value=#{sliderMin}]").prop(
        "selected", true)
      $("[data-js=select-max] option[value=#{sliderMax}]").prop(
        "selected", true)
      updateAmount(sliderMin, sliderMax)

    updateAmount = (minValue, maxValue) ->
      formatedMinValue = addDelimeter(minValue)
      formatedMaxValue = addDelimeter(maxValue)
      $('.amount').html("$#{formatedMinValue} - $#{formatedMaxValue}")

    updateSlider = (selectMinElement, selectMaxElement) ->
      sliderElement.slider("values", 0, selectMinElement.index)
      sliderElement.slider("values", 1, selectMaxElement.index+1)

    $("[data-js=select-min]").change ->
      selectMinElement = $("[data-js=select-min] option:selected")[0]
      selectMaxElement = $("[data-js=select-max] option:selected")[0]
      selectMaxNextElement = $("[data-js=select-max]
        option[value=#{selectMinElement.value}]").next()
      if parseInt(selectMinElement.value) >= parseInt(selectMaxElement.value)
        selectMaxNextElement.prop("selected", true)
        selectMaxElement = selectMaxNextElement[0]
      updateSlider(selectMinElement, selectMaxElement)
      updateAmount(selectMinElement.value, selectMaxElement.value)

    $("[data-js=select-max]").change ->
      selectMinElement = $("[data-js=select-min] option:selected")[0]
      selectMaxElement = $("[data-js=select-max] option:selected")[0]
      selectMinPrevElement = $("[data-js=select-min]
        option[value=#{selectMaxElement.value}]").prev()
      if parseInt(selectMaxElement.value) <= parseInt(selectMinElement.value)
        selectMinPrevElement.prop("selected", true)
        selectMinElement = selectMinPrevElement[0]
      updateSlider(selectMinElement, selectMaxElement)
      updateAmount(selectMinElement.value, selectMaxElement.value)
  return
