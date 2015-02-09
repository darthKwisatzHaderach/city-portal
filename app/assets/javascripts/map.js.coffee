# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

map = new (OpenLayers.Map)('map')
map.addLayer new (OpenLayers.Layer.OSM)
map.zoomToMaxExtent()

lonLat = new (OpenLayers.LonLat)(61.325000, 56.805000).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
school1 = new (OpenLayers.LonLat)(61.319200, 56.799200).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
atom = new (OpenLayers.LonLat)(61.316600, 56.815000).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
square_park = new (OpenLayers.LonLat)(61.317600, 56.815000).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
church = new (OpenLayers.LonLat)(61.330620, 56.799060).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
eternal_flame = new (OpenLayers.LonLat)(61.318700, 56.815000).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
pancake = new (OpenLayers.LonLat)(61.308900, 56.794400).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())

zoom = 14

markers = new (OpenLayers.Layer.Markers)('Markers')
map.addLayer markers

marker_school1 = new (OpenLayers.Marker)(school1)
markers.addMarker marker_school1

marker_atom = new (OpenLayers.Marker)(atom)
markers.addMarker marker_atom

marker_square_park = new (OpenLayers.Marker)(square_park)
markers.addMarker marker_square_park

marker_church = new (OpenLayers.Marker)(church)
markers.addMarker marker_church

marker_9_may = new (OpenLayers.Marker)(eternal_flame)
markers.addMarker marker_9_may

marker_pancake = new (OpenLayers.Marker)(pancake)
markers.addMarker marker_pancake

marker_school1.events.register 'mousedown', marker_school1, (evt) ->
  window.location.href = '/panoramas/school1'    
  OpenLayers.Event.stop evt
  return

marker_atom.events.register 'mousedown', marker_atom, (evt) ->
  window.location.href = '/panoramas/Atom'
  OpenLayers.Event.stop evt
  return

marker_square_park.events.register 'mousedown', marker_square_park, (evt) ->
  window.location.href = '/panoramas/Square_park'
  OpenLayers.Event.stop evt
  return

marker_church.events.register 'mousedown', marker_church, (evt) ->
  window.location.href = '/panoramas/Church'
  OpenLayers.Event.stop evt
  return

marker_9_may.events.register 'mousedown', marker_9_may, (evt) ->
  window.location.href = '/panoramas/9_may'
  OpenLayers.Event.stop evt
  return

marker_pancake.events.register 'mousedown', marker_pancake, (evt) ->
  window.location.href = '/panoramas/Pancake'
  OpenLayers.Event.stop evt
  return

map.setCenter lonLat, zoom