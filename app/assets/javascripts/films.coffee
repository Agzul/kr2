# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
clear_inputs = ->
  $('#film_name').html('')
  $('#director_name').html('')
  $('#search_company>option(1)').attr('select', selected)

main_func = ->
  $('#clear').on('click', clear_inputs)

$(document).ready(main_func)
$(document).on("page:reload", main_func)
