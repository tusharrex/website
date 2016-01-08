$ ->
  colors = [
    '#2b304b',
    '#24737a',
    '#50ae98',
    '#e5a548',
    '#da6346',
    '#d74138',
    '#b92745']
  random_color = colors[Math.floor(Math.random() * colors.length)]
  $('.m-header').css('background-color', random_color)
