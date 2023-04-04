﻿#language: ru

Функционал: Задание 1

Как Администратор я хочу
проверить расчет сумм
чтобы не происходили ошибки  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание документа заказ
*Открытие формы документа заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
*Заполнение шапки
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
*Заполнение товарной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '000000011' | 'Продукты'	    |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '000000030' | 'Колбаса'	    |
	И в таблице "Список" я выбираю текущую строку
	И я удаляю все локальные переменные	
	И я запоминаю значение поля "Сумма" таблицы "Товары" как "$Сумма$"
*Проверка Суммы при изменении количество	
	Тогда таблица "Товары" стала равной:
		| 'Сумма'    |
		| '$Сумма$' |
		
*Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
