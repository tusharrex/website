$ ->
  colors = ['#2B304B', '#24737A', '#50AE98', '#E5A548', '#DA6346', '#D74138', '#B92745'];
  random_color = colors[Math.floor(Math.random() * colors.length)];
  $('.m-header').css('background-color', random_color);
