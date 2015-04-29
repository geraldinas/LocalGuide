# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.profile-changer-trigger').on 'click', () ->
    if($('.profile-changer').hasClass 'profile-changer-is-open')
      textClose()
      bgClose()
      $('.profile-changer').removeClass 'profile-changer-is-open'
    else
      textSlide()
      bgSlide()
      $('.profile-changer').addClass 'profile-changer-is-open'
  $('.profile-text').on 'click', () ->
    profile = $('.profile-container')
    textColor = $(this)
    currentTextColor = profile.data('profile-text')
    if textColor.hasClass 'profile-text-black'
      profile.attr('data-profile-text', 'black')
    if textColor.hasClass 'profile-text-white'
      profile.attr('data-profile-text', 'white')
  $('.profile-bg').on 'click', () ->
    profile = $('.profile-container')
    bgColor = $(this)
    currentTextColor = profile.data('profile-text')
    if bgColor.hasClass 'profile-bg-sea'
      profile.attr('data-profile-bg', 'sea')
    if bgColor.hasClass 'profile-bg-sunset'
      profile.attr('data-profile-bg', 'sunset')
    if bgColor.hasClass 'profile-bg-royale'
      profile.attr('data-profile-bg', 'royale')


textSlide = () ->
  $('.profile-text').each (i) ->
    space = (i+1) * 45;
    $(this).css
      right: space
      opacity: 1

bgSlide = () ->
  $('.profile-bg').each (i) ->
    space = (i + 1) * 45;
    $(this).css
      top: space
      opacity: 1

textClose = () ->
  $('.profile-text').each (i) ->
    $(this).css
      right: 0
      opacity: 0

bgClose = () ->
  $('.profile-bg').each (i) ->
    $(this).css
      top: 0
      opacity: 0