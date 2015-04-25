# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'page:load ready', ->

  togglePricePeriod = ->
    adTypeField = $('select#ad_offer')
    adPricePeriod = $('select#ad_price_period').parent()
    if adTypeField.length && adPricePeriod
      selected = adTypeField.children().filter(':selected').text()
      if selected.toLowerCase() is "sell"
        adPricePeriod.fadeOut().hide()
      else
        adPricePeriod.show().fadeIn()

  togglePricePeriod()
  $('select#ad_offer').change -> togglePricePeriod()
