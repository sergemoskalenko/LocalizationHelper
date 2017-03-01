
# LocalizationHelper
http://camopu.rhorse.ru/LocalizationHelper

README english version:
https://github.com/sergemoskalenko/LocalizationHelper/blob/master/README.md 

Мне приходилось сталкиваться с несколькими проектами **iOS / Mac OS X Xcode** которые были написаны для одного языка интерфейса и которые требовали дальнейшую локализацию на другой язык.

Алгоритм достаточно очевиден, но что касается файлов **.storyboard** и **.xib** files то при добавлении локализации появляются файлы **.strings**  в которые и нужно внести перевод.

![img1](https://github.com/sergemoskalenko/LocalizationHelper/blob/master/01-unlocalized-strings-file.png?raw=true)

Понятно, что перед публикацией приложения в  **iTunes / AppStore** все переведенные строки будут проверены и исправлены дипломированными техническими переводчиками и маркетологами. Но перед этим необходимо получить исходную черновую версию.

Конечно, мы можем воспользоваться  **Google Translate**. Однако, этот сервис при переводе портит ключевые поля и поля комментариев, содержащие базовый текст. Для упрощения работы и была написана простенькая утилита **[LocalizationHelper](https://github.com/sergemoskalenko/LocalizationHelper)** was written.

1. Копируем исходное содержимое файла .strings и вставляем в поле «Source»  **[LocalizationHelper](https://github.com/sergemoskalenko/LocalizationHelper)**.
![img1](https://github.com/sergemoskalenko/LocalizationHelper/blob/master/02-copy-old-strings.png?raw=true)

2. Переводим в Google Translate и результат перевода вставляем в поле  «Localized» **[LocalizationHelper](https://github.com/sergemoskalenko/LocalizationHelper)**.
![img1](https://github.com/sergemoskalenko/LocalizationHelper/blob/master/03-copy-translated.png)

3. По клику на кнопке таб-бара «Result», we obtain a combined corrected data. мы получим совмещенные исправленные данные. Они сразу автоматически отправляются в буфер обмена. Эти данные просто вставляем в целевой файл .strings в Xcode.
![img1](https://github.com/sergemoskalenko/LocalizationHelper/blob/master/04-copy-result-to-xcode.png?raw=true)

Надеюсь, эта программка будет для вас полезной.
Удачного дня!

Binary for Download Mac OS X 10.8+:
https://github.com/sergemoskalenko/LocalizationHelper/blob/master/LocalizationHelper.zip

https://github.com/sergemoskalenko/LocalizationHelper
