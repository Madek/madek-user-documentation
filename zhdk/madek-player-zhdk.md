## Madek-Player

Die URL eines öffentlichen Medieneintrages ermöglicht die Einbettung von Bildern, Videos und Audios in Websites, Blogs und Messaging Apps. Zusätzlich werden die Metadaten Titel, Autorschaft und Rechteinhaber mitgeliefert.

ZHdK Website Beispiele: [https://preview-prod.zhdk.ch/3321](https://preview-prod.zhdk.ch/3321) \(benötigt Login\)

Messaging Apps Beispiele: [https://blog.zhdk.ch/madektest/link-preview-collection/](https://blog.zhdk.ch/madektest/link-preview-collection/)

ZHdK Blog Beispiele: [https://blog.zhdk.ch/madektest/](https://blog.zhdk.ch/madektest/)

### URL teilen

Die URL zum Einbetten finden Sie unter dem „Teilen“-Button im kontextbezogenen Menü eines Medieneintrags. Wählen Sie aus zwischen der eindeutigen URL, wenn Sie explizit diesen Medieneintrag teilen wollen, und der sprechenden URL, wenn Sie wechselnde Inhalte anzeigen wollen.

### ![](/assets/player_20180607_3.22.0 Taeuber-Arp share-button.png)![](/assets/player_20180607_3.22.0 Taeuber-Arp ME teilen.png)

### ZHdK Website auf Typo3

Für die richtige Implementierung und Darstellung des Players in Typo3 empfehlen wir folgendes Vorgehen:

1.Erstellen Sie auf dem Overlay ein neues Inhaltselement an der gewünschten Stelle, indem Sie auf das „Content“ Icon klicken![](/assets/1_typo3_Anleitung.jpeg)2.Wählen Sie im Tab „Content“ das Element „Video“ aus

![](/assets/2_typo3_Anleitung 350px.png)

3.Im Tab „General“ sollte das Feld „Header“ leer bleiben

![](/assets/3_typo3_Anleitung 450px.png)

4.Im Tab „General“ sollte das Feld „Header“ leer bleiben

![](/assets/4_typo3_Anleitung.jpeg)

5.Nun öffnet sich die Ordnerstruktur Filelist. Wählen Sie dann den entsprechenden Ordner aus. Im Bereich „Add new media asset“ tragen Sie die gewünschte URL aus dem Medienarchiv \(oder Vimeo/ Youtube\) ein. Bestätigen Sie die Selektion mit einem Klick auf die Schaltfläche „Add media“.

![](/assets/5_typo3_Anleitung.png)

6.URL-Beispiel \(Bitte beachten Sie dass sprechende Adressen nicht unterstützt werden\)

![](/assets/6_typo3_Anleitung.jpeg)

7. Der Link zum Video erscheint nun in der Liste![](/assets/7_typo3_Anleitung_mit Hinweis.jpeg)8.Setzen Sie nun das Häkchen und klicken Sie auf die Schaltfläche „import selection“, danach wird das Video hinzugefügt![](/assets/8_typo3_Anleitung.jpeg)

## ZHdK Blog auf Wordpress {#zhdk_blog_auf_wordpress}

Unsere ZHdK Blogs \(blog.zhdk.ch\) erkennen automatisch die URLs des Medienarchivs.

## Eigene Wordpress-Blogs {#eigene_wordpress-blogs}

**Madek-Plugin „madek-oembed“**

Bei selbst gehosteten Wordpress-Seiten ist es erforderlich das Madek-Plugin zu installieren. Das Plugin stuft dann die Webseite medienarchiv.zhdk.ch als vertrauenswürdigen Provider \(Anbieter\) ein.

**Vorgehen zur Installation**

Das Plugin „madek-oembed“ kann im Register „Plugins &gt; hinzufügen“ \(im Wordpress Dashboard\) ausgewählt, installiert und aktiviert werden.

Das Plugin kann auch direkt über die Entwickler-Plattform Github heruntergeladen werden: [https://github.com/Madek/madek-wordpress-oembed-plugin](https://github.com/Madek/madek-wordpress-oembed-plugin)

Das nachfolgende Beispiel verwendet statt der automatischen oEmbed Variante \(nur URL\) die Wordpress-Syntax. Damit können Breite und Höhe konfiguriert werden. [https://blog.zhdk.ch/madektest/2017/01/30/mini-video-beispiel/](https://blog.zhdk.ch/madektest/2017/01/30/mini-video-beispiel/)

## Technische Dokumentation {#technische_dokumentation}

Weitere Informationen finden Sie in der technischen Dokumentation: [https://github.com/Madek/madek-documentation/blob/master/source/development/embeds.md](https://github.com/Madek/madek-documentation/blob/master/source/development/embeds.md)



