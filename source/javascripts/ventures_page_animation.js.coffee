$ ->
  return unless window.location.pathname == '/ventures'
  $("[data-js='browser-left']").toggleClass('slide-to-left m-hidden')
  setTimeout ( ->
    $("[data-js='browser-right']").toggleClass('slide-to-right m-hidden')
  ), 350
