# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

News.create(id: 3,
    title: 'Как живется без вытрезвителя?',
	alias: 'kak-zhivetsya-bez-vytrezvitelya',
	intro_text: 'В Заречном не так давно ликвидирован вытрезвитель. К каким результатам это привело? - интересуются читатели.\r\n\r\nПо словам Главы города А.Н.Кислицына, всплеска т.н. "пьяной" преступности (т.е. преступлений, совершённых в состоянии алкогольного опьянения) в Заречном не отмечено. Более того: по итогам 1 квартала 2011г. их количество даже уменьшилось - так что, получается, вытрезвитель был не так уж сильно и нужен... "Хотя местный бюджет и потерял доход от штрафов, - отметил Глава. - Впрочем, вытрезвитель наиболее востребован в зимнее время, так что окончательные выводы делать ещё рано".',
	full_text: 'Что касается помещения, которое ранее занимала эта служба, пока оно остаётся в ведении ГОВД. А о перспективах можно говорить только после того, как произойдёт объединение ГОВД (мы уже рассказывали, что грядёт слияние полиции Заречного и прилегающих территорий). Центр объединённой службы (межтерриториального отдела ГОВД), кстати, уже точно будет располагаться в Заречном.\r\n Информация с сайта gazeta555.cjb.net.',
	image: 'vitrezvitel-012.jpg',
	published: 1,
	created: '2011-06-18 00:00:00')

Panoramas.create(id: 1, path: 'EternalFlameLQ', year: 2011, img_path: '/img/pano/9may_2011.jpg', name: 'Площадь')
Panoramas.create(id: 2, path: 'DTLQ', year: 2011, img_path: '/img/pano/dt_2011.jpg', name: 'Дом Торговли')
Panoramas.create(id: 3, path: 'FlagmanLQ', year: 2012, img_path: '/img/pano/corner_2012.jpg', name: 'Блинная')
Panoramas.create(id: 4, path: 'KirovskyLQ', year: 2012, img_path: '/img/pano/radio_2012.jpg', name: 'Радиотовары')
Panoramas.create(id: 5, path: 'AtomLQ', year: 2013, img_path: '/img/pano/atom_2013.jpg', name: 'Атом')
Panoramas.create(id: 6, path: 'AlechenkovaLQ', year: 2013, img_path: '/img/pano/boulevar_2013.jpg', name: 'Бульвар Алещенкова')
Panoramas.create(id: 7, path: 'rock', year: 2013, img_path: '/img/pano/rock_2013.jpg', name: 'Музей минералогии')
Panoramas.create(id: 8, path: 'StellaLQ', year: 2013, img_path: '/img/pano/stella_2013.jpg', name: 'Стелла')
Panoramas.create(id: 9, path: 'Atom', year: 2014, img_path: '/img/pano/atom_2014.jpg', name: 'Атом')
Panoramas.create(id: 10, path: 'Pancake', year: 2014, img_path: '/img/pano/blinnaya_2014.jpg', name: 'Блинная')
Panoramas.create(id: 11, path: 'Church', year: 2014, img_path: '/img/pano/church_2014.jpg', name: 'Церковь')
Panoramas.create(id: 12, path: 'Malahit', year: 2014, img_path: '/img/pano/malahit_2014.jpg', name: 'Гостиница "Малахит"')
Panoramas.create(id: 13, path: 'Tahov', year: 2014, img_path: '/img/pano/tahov_2014.jpg', name: 'Гостиница "Тахов"')
Panoramas.create(id: 14, path: 'Tir', year: 2014, img_path: '/img/pano/tir_2014.jpg', name: 'Тир')
Panoramas.create(id: 15, path: '9_may', year: 2014, img_path: '/img/pano/eternal_flame_2014.jpg', name: 'Вечный огонь')
Panoramas.create(id: 16, path: 'Square_park', year: 2014, img_path: '/img/pano/square_2014.jpg', name: 'Сквер у вечного огня')
Panoramas.create(id: 17, path: 'stroitelyam', year: 2014, img_path: '/panoramas/stroitelyam_preview.jpg', name: 'Памятник строителям')
Panoramas.create(id: 18, path: 'school7', year: 2014, img_path: '/panoramas/school7_preview.jpg', name: 'Школа №7')
Panoramas.create(id: 19, path: 'school1', year: 2014, img_path: '/panoramas/school1_preview.jpg', name: 'Школа №1')
Panoramas.create(id: 20, path: 'new_church', year: 2014, img_path: '/panoramas/new_church_preview.jpg', name: 'Новая церковь')
Panoramas.create(id: 21, path: 'near_1', year: 2014, img_path: '/panoramas/near_1_preview.jpg', name: 'Рядом с школой №1')
Panoramas.create(id: 22, path: 'galaktika', year: 2014, img_path: '/panoramas/galaktika_preview.jpg', name: 'Галактика')
Panoramas.create(id: 23, path: 'dvor', year: 2014, img_path: '/panoramas/dvor_preview.jpg', name: 'Двор')
Panoramas.create(id: 24, path: 'dk_2014', year: 2014, img_path: '/panoramas/dk_preview.jpg', name: 'ДК "Ровесник"')
Panoramas.create(id: 25, path: 'corner_ll', year: 2014, img_path: '/panoramas/leningradskaya_lenina_preview.jpg', name: 'Ленинградская-Ленина')
Panoramas.create(id: 26, path: 'between_g_12', year: 2014, img_path: '/panoramas/between_g_12_preview.jpg', name: 'Между Галактикой и 12-этажкой')
Panoramas.create(id: 27, path: 'b_in', year: 2014, img_path: '/panoramas/boulevar_in_preview.jpg', name: 'Бульвар Алещенкова: арки')
Panoramas.create(id: 28, path: 'b_entrence', year: 2014, img_path: '/panoramas/boulevar_entrance.jpg', name: 'Бульвар Алещенкова: вход')
Panoramas.create(id: 29, path: '12', year: 2014, img_path: '/panoramas/12_preview.jpg', name: '12-этажка')