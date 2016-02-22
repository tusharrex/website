openMainMenu = ->
  $('.main-menu').removeClass('bouncedOut').addClass('bouncedIn')

closeMainMenu = ->
  $('.main-menu').removeClass('bouncedIn').addClass('bouncedOut')

$ ->
  $('.m-burger-button').click ->
    openMainMenu()

  $('.main-menu-close-button, .overlay').click ->
    closeMainMenu()
