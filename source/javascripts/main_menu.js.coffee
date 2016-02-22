openMainMenu = ->
  $('.main-menu').removeClass('bouncedOut').addClass('bouncedIn')

closeMainMenu = ->
  $('.main-menu').removeClass('bouncedIn').addClass('bouncedOut')

$ ->
  $('.m-burger-button').on 'touchstart click', ->
    openMainMenu()

  $('.main-menu-close-button').on 'touchstart click', ->
    closeMainMenu()
