# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

map = new (OpenLayers.Map)('map')
map.addLayer new (OpenLayers.Layer.OSM)
map.zoomToMaxExtent()
lonLat = new (OpenLayers.LonLat)(61.316667, 56.800000).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
school1 = new (OpenLayers.LonLat)(61.319200, 56.799200).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
atom = new (OpenLayers.LonLat)(61.316600, 56.815000).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
zoom = 16
markers = new (OpenLayers.Layer.Markers)('Markers')
map.addLayer markers
marker_school1 = new (OpenLayers.Marker)(school1)
markers.addMarker marker_school1
marker_atom = new (OpenLayers.Marker)(atom)
markers.addMarker marker_atom
marker_school1.events.register 'mousedown', marker_school1, (evt) ->
  window.location.href = '/panoramas/school1'
  OpenLayers.Event.stop evt
  return
marker_atom.events.register 'mousedown', marker_atom, (evt) ->
  window.location.href = '/panoramas/Atom'
  OpenLayers.Event.stop evt
  return
map.setCenter lonLat, zoom