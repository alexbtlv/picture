jQuery ->
  if $('#infinite-scrolling').size() > 0
    $(window).bindWithDelay 'scroll', ->
      more_images_url = $('.pagination .arrow a').last().attr('href')
      if more_images_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
        $('#infinite-scrolling .pagination').html(
          '<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />')
        $.getScript more_images_url
      return
    , 100
  return