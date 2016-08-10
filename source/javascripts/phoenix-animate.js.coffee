$ ->
  $(".job-bcg").interactive_bg ->
    strength: 25,
    scale: 1.05,
    animationSpeed: "100ms",
    contain: true,
    wrapContent: true

  $(window).resize ->
    $('.job-bcg > .ibg-bg').css
      width: $(window).outerWidth()
