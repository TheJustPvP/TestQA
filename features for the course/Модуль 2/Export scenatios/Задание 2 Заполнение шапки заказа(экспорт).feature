﻿#language: ru

@tree
@ExportScenarios

Функционал: Экспортный сценарий на заполнение шапки документа Заказ.

Как Администратор я хочу
создать эксортный сценарий по заполнению шапки
чтобы упростить создание тестов в дальнейшем

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Я заполняю шапку документа заказ "ТекОрганизаци", "ТекПокупатель", "ТекСклад", "ТекВалюта"
	И из выпадающего списка с именем "Организация" я выбираю точное значение '[ТекОрганизаци]'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я активизирую дополнение формы с именем "СписокСтрокаПоиска"
	И в таблице "Список" в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст ''
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст '[ТекПокупатель]'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И из выпадающего списка с именем "Склад" я выбираю точное значение '[ТекСклад]'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение '[ТекВалюта]'
		
		


