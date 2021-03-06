// Шаблон для программного формирования отчета на СКД
СхемаКомпоновкиДанных = Отчет.[<Имя отчета>].ПолучитьМакет("ОсновнаяСхемаКомпоновкиДанных");
НастройкиКомпоновки = СхемаКомпоновкиДанных.НастройкиПоУмолчанию;

// 1. Вывод в табличный документ.
КомпоновщикМакета = Новый КомпоновщикМакетаКомпоновкиДанных;
МакетКомпоновки = КомпоновщикМакета.Выполнить(СхемаКомпоновкиДанных, НастройкиКомпоновки);

ПроцессорКомпоновки = Новый ПроцессорКомпоновкиДанных;
ПроцессорКомпоновки.Инициализировать(МакетКомпоновки);

ПроцессорВывода = Новый ПроцессорВыводаРезультатаКомпоновкиДанныхВТабличныйДокумент;

ТабличныйДокументОтчет = Новый ТабличныйДокумент;
ПроцессорВывода.УставновитьДокумент(ТабличныйДокументОтчет);

// 2. Вывод в коллекцию значениец.
КомпоновщикМакета = Новый КомпоновщикМакетаКомпоновкиДанных;
МакетКомпоновки = КомпоновщикМакета.Выполнить(СхемаКомпоновкиДанных, НастройкиКомпоновки,,,Тип()"");

ПроцессорКомпоновки = Новый ПроцессорКомпоновкиДанных;
ПроцессорКомпоновки.Инициализировать(МакетКомпоновки);

ПроцессорВывода = Новый ПроцессорВыводаРезультатаКомпоновкиДанныхВКоллекциюЗначений;

ТаблицаЗначенийВывода = Новый ТаблицаЗначений;
ПроцессорВывода.УставновитьОбъект(ТаблицаЗначенийВывода);

ПроцессорВывода.Вывести(ПроцессорКомпоновки);
