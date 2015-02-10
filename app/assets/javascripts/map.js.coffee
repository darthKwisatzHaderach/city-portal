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
malahit = new (OpenLayers.LonLat)(61.313900, 56.810000).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
tahov = new (OpenLayers.LonLat)(61.314700, 56.804700).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
tir = new (OpenLayers.LonLat)(61.311770, 56.810910).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
stroitelyam = new (OpenLayers.LonLat)(61.320400, 56.815500).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
school7 = new (OpenLayers.LonLat)(61.312700, 56.798100).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
new_church = new (OpenLayers.LonLat)(61.320000, 56.808000).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
near_1 = new (OpenLayers.LonLat)(61.320500, 56.799700).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())

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

marker_malahit = new (OpenLayers.Marker)(malahit)
markers.addMarker marker_malahit

marker_tahov = new (OpenLayers.Marker)(tahov)
markers.addMarker marker_tahov

marker_tir = new (OpenLayers.Marker)(tir)
markers.addMarker marker_tir

marker_stroitelyam = new (OpenLayers.Marker)(stroitelyam)
markers.addMarker marker_stroitelyam

marker_school7 = new (OpenLayers.Marker)(school7)
markers.addMarker marker_school7

marker_new_church = new (OpenLayers.Marker)(new_church)
markers.addMarker marker_new_church

marker_near_1 = new (OpenLayers.Marker)(near_1)
markers.addMarker marker_near_1

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

marker_malahit.events.register 'mousedown', marker_malahit, (evt) ->
  window.location.href = '/panoramas/Malahit'
  OpenLayers.Event.stop evt
  return  

marker_tahov.events.register 'mousedown', marker_tahov, (evt) ->
  window.location.href = '/panoramas/Tahov'
  OpenLayers.Event.stop evt
  return  

marker_tir.events.register 'mousedown', marker_tir, (evt) ->
  window.location.href = '/panoramas/Tir'
  OpenLayers.Event.stop evt
  return 

marker_stroitelyam.events.register 'mousedown', marker_stroitelyam, (evt) ->
  window.location.href = '/panoramas/stroitelyam'
  OpenLayers.Event.stop evt
  return 

marker_school7.events.register 'mousedown', marker_school7, (evt) ->
  window.location.href = '/panoramas/school7'
  OpenLayers.Event.stop evt
  return 

marker_new_church.events.register 'mousedown', marker_new_church, (evt) ->
  window.location.href = '/panoramas/new_church'
  OpenLayers.Event.stop evt
  return 

marker_near_1.events.register 'mousedown', marker_near_1, (evt) ->
  window.location.href = '/panoramas/near_1'
  OpenLayers.Event.stop evt
  return 

map.setCenter lonLat, zoom