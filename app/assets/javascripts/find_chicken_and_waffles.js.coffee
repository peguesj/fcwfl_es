# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
google.maps.event.addDomListener(window, 'load', initialize);
jQuery(document).ready ($) ->
  relocate()