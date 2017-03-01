# LocalizationHelper
http://camopu.rhorse.ru/LocalizationHelper

I had to deal with multiple **iOS / Mac OS X Xcode** projects
which were written for a language interface which required further localization into another language.

The algorithm is fairly obvious, but as .storyboard .xib files and then with the addition of localization appear **.strings** files in that and you need to make the translation.

![img1](https://github.com/sergemoskalenko/LocalizationHelper/blob/master/01-unlocalized-strings-file.png?raw=true)

It is understood that before the publication of the application in the **iTunes / AppStore** all translated strings will be checked and corrected by certified technical translators and marketers. But before that you need to get the original draft version.

Of course, we can use **Google Translate**. However, the service in the translation spoils key fields and comment fields, containing the basic text. For ease of use and simple tool **[LocalizationHelper](https://github.com/sergemoskalenko/LocalizationHelper)** was written.

1. Copy the contents of the original file .strings and stick to the «Source» field **[LocalizationHelper](https://github.com/sergemoskalenko/LocalizationHelper)**.
![img1](https://github.com/sergemoskalenko/LocalizationHelper/blob/master/02-copy-old-strings.png?raw=true)

2. Translate into Google Translate and transfer the result to paste the field «Localized» **[LocalizationHelper](https://github.com/sergemoskalenko/LocalizationHelper)**.
![img1](https://github.com/sergemoskalenko/LocalizationHelper/blob/master/03-copy-translated.png)

3. By clicking on the button bar melting «Result», we obtain a combined corrected data. They immediately sent automatically to the clipboard. This data is simply inserted into the target .strings file in Xcode.
![img1](https://github.com/sergemoskalenko/LocalizationHelper/blob/master/04-copy-result-to-xcode.png?raw=true)

Hopefully, this program will be useful to you.
Have a good day!

Binary for Download Mac OS X 10.8+:
https://github.com/sergemoskalenko/LocalizationHelper/blob/master/LocalizationHelper.zip

https://github.com/sergemoskalenko/LocalizationHelper
