$ ->
  if $(window).height() < 947
    $arrow = $('[data-js=scroll-down-arrow]')
    $arrow.css('display', 'block')
    $(window).scroll ->
      if ($(this).scrollTop() > 0)
        $arrow.fadeOut() if $arrow.css('display') == 'block'
      else
        $arrow.stop(false).fadeIn()
