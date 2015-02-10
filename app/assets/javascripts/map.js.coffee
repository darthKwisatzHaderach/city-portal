# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

map = new (OpenLayers.Map)('map')
map.addLayer new (OpenLayers.Layer.OSM)
map.zoomToMaxExtent()

markers = new (OpenLayers.Layer.Markers)('Markers')
map.addLayer markers

addMarkerWithLink = (name, lon, lat, link) ->
	coordinates = new (OpenLayers.LonLat)(lon, lat).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())
	name = new (OpenLayers.Marker)(coordinates)
	markers.addMarker name
	name.events.register 'mousedown', name, (evt) ->
		window.location.href = link    
		OpenLayers.Event.stop evt
		return

lonLat = new (OpenLayers.LonLat)(61.325000, 56.805000).transform(new (OpenLayers.Projection)('EPSG:4326'), map.getProjectionObject())

zoom = 14

addMarkerWithLink('DTLQ', 61.315300, 56.805200, '/panoramas/DTLQ')
addMarkerWithLink('school1', 61.319200, 56.799200, '/panoramas/school1')
addMarkerWithLink('atom', 61.316600, 56.815000, '/panoramas/Atom')
addMarkerWithLink('square_park', 61.317600, 56.815000, '/panoramas/Square_park')
addMarkerWithLink('church', 61.330620, 56.799060, '/panoramas/Church')
addMarkerWithLink('eternal_flame', 61.318700, 56.815000, '/panoramas/9_may')
addMarkerWithLink('pancake', 61.308900, 56.794400, '/panoramas/Pancake')
addMarkerWithLink('malahit', 61.313900, 56.810000, '/panoramas/Malahit')
addMarkerWithLink('tahov', 61.314700, 56.804700, '/panoramas/Tahov')
addMarkerWithLink('tir', 61.311770, 56.810910, '/panoramas/Tir')
addMarkerWithLink('stroitelyam', 61.320400, 56.815500, '/panoramas/stroitelyam')
addMarkerWithLink('school7', 61.312700, 56.798100, '/panoramas/school7')
addMarkerWithLink('new_church', 61.320000, 56.808000, '/panoramas/new_church')
addMarkerWithLink('near_1', 61.320500, 56.799700, '/panoramas/near_1')
addMarkerWithLink('galaktika', 61.322200, 56.797400, '/panoramas/galaktika')
addMarkerWithLink('dvor', 61.308000, 56.797800, '/panoramas/dvor')
addMarkerWithLink('dk_2014', 61.321000, 56.815000, '/panoramas/dk_2014')
addMarkerWithLink('corner_ll', 61.324900, 56.799000, '/panoramas/corner_ll')
addMarkerWithLink('between_g_12', 61.320000, 56.796800, '/panoramas/between_g_12')
addMarkerWithLink('b_in', 61.313100, 56.798800, '/panoramas/b_in')
addMarkerWithLink('b_entrence', 61.315100, 56.799600, '/panoramas/b_entrence')
addMarkerWithLink('candle', 61.318900, 56.796800, '/panoramas/12')
addMarkerWithLink('atom_2013', 61.316100, 56.815000, '/panoramas/AtomLQ')
addMarkerWithLink('alechenkovaLQ', 61.312600, 56.798600, '/panoramas/AlechenkovaLQ')
addMarkerWithLink('rock', 61.320500, 56.798800, '/panoramas/rock')
addMarkerWithLink('stellaLQ', 61.325600, 56.800700, '/panoramas/StellaLQ')
addMarkerWithLink('flagmanLQ', 61.308800, 56.794300, '/panoramas/FlagmanLQ')
addMarkerWithLink('kirovskyLQ', 61.315400, 56.799800, '/panoramas/KirovskyLQ')
addMarkerWithLink('eternalFlameLQ', 61.319000, 56.815000, '/panoramas/EternalFlameLQ')

map.setCenter lonLat, zoom
