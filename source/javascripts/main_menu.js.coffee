openMainMenu = ->
  $('.main-menu').removeClass('bouncedOut').addClass('bouncedIn')

closeMainMenu = ->
  $('.main-menu').removeClass('bouncedIn').addClass('bouncedOut')

$ ->
  $('.m-burger-button').on 'touchend click mouseup', ->
    openMainMenu()

  $('.main-menu-close-button').on 'touchend click mouseup', ->
    closeMainMenu()
