$ ->
  $("[data-js=upload-trigger]").click ->
    $("[data-js=upload]").trigger('click')

  $("[data-js=upload]").change ->
    filePath = $("[data-js=upload]").val()
    fileName = filePath.replace(/^.*[\\\/]/, '')
    $("[data-js=upload-info]").html(fileName)
