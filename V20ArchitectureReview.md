# MVC Плагін Архітектура #

# Взаємодія між LMS і плагніми #

Архітектура IUDICO є плагін базованою архітектурою. Це означає, що існує основна система – LMS та загальна бібліотека (Common), та набір плагінів – підсистеми IUDICO, які з’єднюються між собою та з LMS, за допомогою АРІ. Щоб зробити систему максимально гнучкою, жодна з підситем та LMS не знають один про одного, а спілкуються виключно за допомогою інтерфейсів – цей метод називають Dependency Injection. Він дозволяє легко та зручно добавляти нову функціональність, а також додавати альтирнативу вже існуючій. Загальна бібліотека містить інтерфейси сервісів, які плагіни можуть використовувати, щоб додавати функціональність до системи. Коли LMS система запускається – вона інітціалізує всі плагіни і дає їм змогу зареєструвати функціональність для інтерфейсів. Коли плагіну потрібно дістати доступ до якогось сервісу, він використовує LMS сервіс, щоб дістати потрібний сервіс, як інтерфейс. Нижче наведено архітектуру IUDICO та інтерфейси сервісів, які використовуються:


# Структура плагіну #

![http://img853.imageshack.us/img853/34/plugin2.png](http://img853.imageshack.us/img853/34/plugin2.png)

Потреби до плагіна:
  * Клас, який реалізує інтерфейси IWindsorInstaller та IPlugin.
  * Контролери повинні походити від класу **PluginController**. Це потрібно тому, що **PluginController** перевизначає метод **View()**, в якому шукається шлях до View.
  * Реалізації сервісів мають бути зареєстровані в методі **Install** з інтерфейсу **IWindsorInstaller** таким чином: Component.For`<`_ISpecificService_>().ImplementedBy`<`_ServiceClassName_>().LifeStyle.Is(Castle.Core.LifestyleType.Singleton)

# Інтерфейси сервісів #

Існують такі інтерфейси:
  * ILmsService – цей інтерфейс реалізує LMS. Він використовується плагінами, щоб передавати та приймати нотифікації, а також він дає можливість плагіну дістати реалізацію інтерфейса сервісу.
  * ICurriculumService – дає можливість діставати інформацію про Curriculum, Stage, Theme з певними фільтрами.
  * ITestingService – дає можливість діставати інформацію про результати проходження курсів
  * ICourseService – дає можливість діставати інформацію про курси.
  * IUserService – дає можливість діставати інформацію про користувачів, ролі та групи.

# Приклад плагіну CourseManagement #

![http://img215.imageshack.us/img215/9862/pluginj.png](http://img215.imageshack.us/img215/9862/pluginj.png)