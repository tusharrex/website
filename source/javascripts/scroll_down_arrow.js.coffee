$ ->
  scrollDownArrow = $('[data-js=scroll-down-arrow]')

  $(window).scroll ->
    if ($(this).scrollTop() > 0)
      scrollDownArrow.fadeOut()
    else
      scrollDownArrow.fadeIn()
