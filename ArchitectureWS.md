# Web Service for Compiled Tests #
Веб сервіс який призначений для компілювання програм, з підтримкою різних мов програмування. На вході отримує код програми та пари вхідних даних і очікуваного результату


На виході повертає один з наступних результатів:
  * Помилка компіляції програми
  * Помилка виконання програми
  * Перевищено ліміт пам’яті, тест №
  * Перевищено ліміт часу виконання, тест №
  * Успішно
![http://iudico.googlecode.com/files/class_diagram_WS.jpg](http://iudico.googlecode.com/files/class_diagram_WS.jpg)

> Архітектура класів сервісу тестування.
Робота сервісу проходить наступним чином: клас CompilationTester отримує на вхід екземпляр класу Program, котрий містить у собі всю інформацію про програму. Цей об'єкт почергово передається у Compiler і Runner, котрі, відповідно, компілюють і виконують програму. Якщо програма не пройшла стадії компіляції, виконання її не проводиться. Результатом роботи CompilationTester є екземпляр класу Result, який містить в собі інформацію про те, чи всі стадії перевірки пройшли успішно і якщо ні - то з якої причини.

![http://iudico.googlecode.com/files/use_case_WS.jpg](http://iudico.googlecode.com/files/use_case_WS.jpg)
> Use case діаграма для веб сервісу