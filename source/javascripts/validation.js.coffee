$ ->

  emailField = $('[data-js=email]')
  nameField = $('[data-js=name]')

  handleError = (field) ->
    field.addClass('error')
    field.siblings('.error-msg').removeClass('hidden')
    false

  removeError = (field) ->
    field.removeClass('error')
    field.siblings('.error-msg').addClass('hidden')

  checkPresence = (attr) ->
    attr == null || attr == ''

  formValid = ->
    emailValid = validEmail()
    nameValid = validName()
    emailValid && nameValid

  validName = ->
    nameValue = nameField.val()
    if checkPresence(nameValue)
      handleError(nameField)
    else
      removeError(nameField)

  validEmail = ->
    emailValue = emailField.val()
    if checkPresence(emailValue) || !emailValue.match(/\S+@\S+\.\S+/)
      handleError(emailField)
    else
      removeError(emailField)

  emailField.focusout ->
    validEmail()

  nameField.focusout ->
    validName()

  $('#contact-form').submit (e) ->
    return if formValid()
    e.preventDefault()
    $('.error')[0].focus()
