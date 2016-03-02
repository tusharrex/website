openMainMenu = ->
  $('.main-menu').removeClass('bouncedOut').addClass('bouncedIn')
  $('html').addClass('overflow-hidden')

closeMainMenu = ->
  $('.main-menu').removeClass('bouncedIn').addClass('bouncedOut')
  $('html').removeClass('overflow-hidden')

$ ->
  $('.m-burger-button').on 'touchend click mouseup', ->
    openMainMenu()

  $('.m-close-button, .overlay').on 'touchend click mouseup', ->
    closeMainMenu()
