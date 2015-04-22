$(function() {
  if ($("#map").length > 0) {
    handler = Gmaps.build('Google');
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
      markers = handler.addMarkers(rawMarkers);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
    });
  }
});

