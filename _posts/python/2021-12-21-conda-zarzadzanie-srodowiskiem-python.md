---
layout: post
published: false
title: Python&#58; Zarządzanie Pakietami
internal-title: Zarządzanie pakietami oraz środowiskiem dla języka Python
description: >
    Pracując w&nbsp;środowisku Python wykorzystuje się wiele różnych pakietów. Conda pozwala w&nbsp;łatwy sposób zapanować nad środowiskiem wykonywalnym, pakietami oraz wszystkimi zależnościami jakie między nimi występują.
#accent_image: /assets/img/cover/warsztat-bg.jpg
#image: /assets/img/cover/warsztat-bg.jpg
img: cover/anaconda.png
ximg: tmb/anaconda.png
copyrights: cover image Photo by https://www.australiazoo.com.au/wildlife/our-animals/anaconda-green/
#hide_image: true
author: rroszczyk
comments: false
categories: [python] 
tags: [python, conda]
series: [python praktycznie]
comments: false
---

Pracując z&nbsp;Python'em wykorzystuje się wiele różnych pakietów w&nbsp;różnych wersjach. Wiele z&nbsp;tych pakietów działa z&nbsp;konkretnymi wersjami języka bądź wymaga do prawidłowej pracy innych pakietów w&nbsp;ściśle określonych wersjach. Instalując wszystko na pojedynczym komputerze w&nbsp;najlepszym wypadku można doprowadzić do olbrzymiego bałaganu, w&nbsp;najgorszym wszystko przestanie działać. 
{:.text-justify-has-drop-cap}

Rozwiązaniem problemu bałaganu w&nbsp;pakietach jest konfiguracja wielu środowisk pracy dostosowanych do konkretnych potrzeb. Poza chaosem, istnieje więcej przypadków użycia, w&nbsp;których posiadanie dodatkowych środowisk może się przydać:
{:.text-justify}
* Masz aplikację, która kiedyś działała poprawnie, ale teraz nie daje się jej uruchomić. Może to być spowodowane tym, że jeden z&nbsp;wymaganych pakietów nie jest już kompatybilny z&nbsp;innymi częściami systemu. Możliwym rozwiązaniem tego problemu jest utworzenie nowego środowiska dla Twojej aplikacji, które zawiera wersję Pythona oraz pakiety, które są całkowicie kompatybilne z&nbsp;Twoją aplikacją.
* Tworzysz system z&nbsp;innymi osobami i&nbsp;chcesz mieć pewność, że Twoja aplikacja działa poprawnie na komputerach innych członków zespołu i&nbsp;odwrotnie. Do tego celu również świetnie nadaje się mechanizm pozwalający tworzyć środowiska w&nbsp;dokładnie takich samych wersjach na komputerach wszystkich uczestników projektu.
* Dostarczasz aplikację komuś innemu i&nbsp;ponownie chcesz mieć pewność, że będzie ona działa bezproblemowo na jego komputerze. Wykorzystanie wiernej kopii środowiska pozwoli zapewnić zgodność systemu, a&nbsp;co za tym idzie prawidłowe uruchomienie aplikacji.
{:.text-justify}

Środowisko składa się z&nbsp;pewnej wersji Pythona oraz zestawu odpowiednich pakietów. W&nbsp;związku z&nbsp;tym, jeśli chcesz rozwijać lub używać aplikacji z&nbsp;różnymi wymaganiami dotyczącymi różnych wersji Pythona bądź pakietów, powinieneś skonfigurować różne środowiska.
{:.text-justify}

## System zarządzania pakietami oraz środowiskiem
Najpopularniejszymi systemami zarządzania jest **PIP**{:.maroon} do zarządzania pakietami oraz **virtualenv**{:.maroon} do zarządzania środowiskiem. Obydwa narzędzia instalowane są razem z Python'em. Alternatywnym rozwiązaniem jest **conda**{:.maroon} pozwalająca jednocześnie zarządzać pakietami oraz środowiskiem. Oba systemy pozwalają w&nbsp;łatwy sposób zapanować nad chaosem jaki może powstać w&nbsp;naszym środowisku.
{:.text-justify}

Conda udostępnia wszystkie niezbędne mechanizmy zarządzania zarówno pakietami jak i&nbsp;środowiskiem. Conda pozwala na szybką i&nbsp;łatwą instalację pakietów oraz ich zależności. Conda używana jako menedżer pakietów pomaga znaleźć oraz zainstalować potrzebne pakiety w&nbsp;repozytoriach Internetowych. Jeśli potrzebujesz pakietu, który wymaga innej wersji Pythona, nie musisz korzystać z&nbsp;innego menedżera środowisk, ponieważ conda jest doskonałym menedżerem środowisk. Za pomocą zaledwie kilku poleceń można skonfigurować całkowicie odrębne środowisko do uruchamiania odpowiedniej wersji Pythona z&nbsp;odrębnym zestawem pakietów, jednocześnie nadal uruchamiając standardową wersję Pythona w&nbsp;domyślnym środowisku.
{:.text-justify}

### Instalacja
Menedżer pakietów oraz środowiska conda jest dołączony do wszystkich wersji programów Anaconda i&nbsp;Miniconda. Miniconda dostępna jest w&nbsp;bezpłatnej wersji, natomiast Anaconda występuje w&nbsp;wersji bezpłatnej oraz płatnej (Anaconda Enterprise platform). Jeśli chodzi o&nbsp;główne różnice, to Miniconda wymaga około 400MB miejsca na dysku i&nbsp;zawiera tylko kilka podstawowych pakietów. Natomiast instalator Anacondy wymaga około 3GB miejsca na dysku, i&nbsp;instaluje ponad 150 pakietów, między innymi pakiety do statystyki oraz uczenia maszynowego. Instaluje on również **Anaconda Navigator**{:.maroon}, narzędzie GUI, które pomaga zarządzać środowiskami Conda oraz zainstalowanymi pakietami.
{:.text-justify}

Osobiście preferuję Minicondę, ponieważ zazwyczaj nie potrzebuję większości pakietów, które są domyślnie dołączone do Anacondy. Innym powodem jest to, że zastosowanie Minicondy pozwala mi na płynniejsze powielanie środowiska (na przykład, jeśli chcę go używać także na innym komputerze), ponieważ na obu komputerach instaluję tylko pakiety wymagane przez aplikację nad którą aktualnie pracuje.
{:.text-justify}

Wszystkie trzy wymienione instalatory są dostępne w&nbsp;wersjach dla systemu Linux, Windows oraz macOS. Ponadto do wyboru jest wersja 32&nbsp;oraz 64&nbsp;bitowa. Wybór wersji zależy od systemu operacyjnego którego używasz, przy czym polecam wersje 64&nbsp;bitowe ponieważ jest dla niej dostępne więcej pakietów.
{:.text-justify}

## Środowisko Pythona
Niezależnie od tego którą wersję instalacyjną wybierzemy to instalator najpierw instaluje Condę, która - jak już wspomniałem - jest narzędziem do zarządzania pakietami oraz środowiskiem. Następnie Conda tworzy środowisko root, które zawiera dwie rzeczy:
{:.text-justify}
* aktualną wersję Pythona 
* kilka podstawowych pakietów.
{:.text-justify}

Obok środowiska głównego można utworzyć dowolną liczbę dodatkowych środowisk. Chodzi o&nbsp;to, że te dodatkowe środowiska mogą zawierać różne wersje Pythona oraz innych pakietów. 
{:.text-justify}

### Struktura katalogów
Conda instaluje się w jednym katalogu. Wewnątrz tego katalogu znajduje się środowisko **root**{:.maroon} oraz katalogi systemu Conda. Z&nbsp;naszego punktu widzenia istotny jest katalog **pkgs**{:.maroon} zawierający zbuforowane pakiety w&nbsp;skompresowanych i&nbsp;nieskompresowanych formatach oraz katalog **envs**{:.maroon} zawierający utworzone i&nbsp;skonfigurowane środowiska.
{:.text-justify}

### Tworzenie nowego środowiska
Aby utworzyć nowe środowisko o&nbsp;nazwie, na przykład srodowisko_testowe (możesz je nazwać jak chcesz ale pamiętaj, że w&nbsp;nazwach nie można używać znaków specjalnych /, :, # oraz spacji), uruchom:
{:.text-justify}
```bash
conda create --name srodowisko_testowe
```

Utworzone środowisko będzie używać tej samej wersji Pythona, co interpreter Pythona bieżącej powłoki. Aby określić inną wersję Pythona, użyj polecenia:
{:.text-justify}
```bash
conda create --name srodowisko_testowe python=3.10
```
### Przełączanie między środowiskami
Wewnątrz nowej instalacji Conda, środowisko root jest ustawione jako domyślne, więc można go używać bez dodatkowej aktywacji. W&nbsp;innych przypadkach, jeśli chcesz używać środowiska, musisz je najpierw aktywować. Do tego celu używamy polecenia:
{:.text-justify}
```bash
conda activate srodowisko_testowe 
```
Katalogi z&nbsp;plikami wykonywalnymi aktywnego środowiska są dodawane do ścieżki systemowej. Możesz opuścić aktywne środowisko przełączając się ponownie do domyślnego środowiska **root**{:.maroon} za pomocą tego polecenia:
{:.text-justify}
```bash
conda deactivate
```