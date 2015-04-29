// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.

//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require local_time
//= require_tree ../../../vendor/assets/javascripts/.
//= require_tree .
//= require underscore
//= require gmaps/google
//= require map


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
      opacity: 0

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