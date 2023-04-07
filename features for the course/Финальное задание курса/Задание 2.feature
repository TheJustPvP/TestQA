﻿#language: ru

@tree

Функционал: Финальное 2 задание курса

Как тестировщик я хочу
проверить отчет Остатки
чтобы не возникало ошибок

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка отчета Остатки
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	И в таблице "СписокНастроек" я перехожу к строке
		| 'Представление' |
		| 'Основной'      |
	И в таблице "СписокНастроек" я выбираю текущую строку
	И Пауза 20
	И я нажимаю кнопку выбора у поля с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000030' | 'Колбаса'      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	Дано Ожидаем завершения фонового формирования отчета в течение "20" секунд		
	Тогда табличный документ "Результат" равен:
		| 'Отбор:'  | 'Товар Равно "Колбаса"' | ''                   | ''                   |
		| ''        | ''                      | ''                   | ''                   |
		| 'Товар'   | 'Большой'               | 'Малый'              | 'Итого'              |
		| ''        | 'Количество Остаток'    | 'Количество Остаток' | 'Количество Остаток' |
		| 'Колбаса' | '205,00'                | '352,00'             | '557,00'             |
		| 'Итого'   | '205,00'                | '352,00'             | '557,00'             |
		