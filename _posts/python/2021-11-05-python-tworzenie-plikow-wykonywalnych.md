---
layout: post
toc: true
description: >    
    Zwyczajowo tworzone programy są kompilowane do postaci plików wykonywalnych. W tym wpisie przedstawiony został sposób tworzenia plików wykonywalnych dla języka Python.
hide_description: true
title: Python&#58; Tworzenie Plików Wykonywalnych
categories: [python] 
tags: [python, pliki wykonywalne]
series: [python praktycznie]
languages:
- pl
img: cover/build-unsplash.jpg
ximg: tmb/build-unsplash_x-min.jpg
author: rroszczyk
comments: false
#Photo by <a href="https://unsplash.com/@danist07?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Danist Soh</a> on <a href="https://unsplash.com/s/photos/build?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>  
#[PYTHON - przewodnik praktyczny]  
---

Programy pisane w&nbsp;języku C&nbsp;czy C++&nbsp;zwyczajowo są kompilowane do postaci plików wykonywalnych. Niekiedy takowa funkcjonalność jest również potrzebna programistom piszącym w&nbsp;języku Python. Aby sprostać ich wymaganiom powstało wiele różnych narzędzi pozwalających budować pliki wykonywalne składające się z&nbsp;całego środowiska wykonywalnego dla Pythona oraz skryptów do uruchomienia. Jednym z&nbsp;takich programów jest Pyinstaller.
{:.text-justify-has-drop-cap}

PyInstaller zamraża (pakuje) aplikacje Pythona w&nbsp;samodzielne pliki wykonywalne dla środowiska Windows, GNU/Linux, Mac&nbsp;OS&nbsp;X, Solaris oraz FreeBSD. Głównymi zaletami Pyinstallera w&nbsp;porównaniu z&nbsp;podobnymi narzędziami tego typu są: 
{:.text-justify} 
- praca z&nbsp;Pythonem w&nbsp;wersjach 3.5-3.9, 
- budowanie mniejszych plików wykonywalnych dzięki zaawansowanej kompresji, 
- pełna wieloplatformowość 
- wykorzystanie wsparcia systemu operacyjnego do ładowania bibliotek dynamicznych.


Głównym celem twórców Pyinstallera jest zapewnienie kompatybilności z&nbsp;wieloma pakietami Pythona i&nbsp;zmniejszenie ilości dodatkowej pracy koniecznej do utworzenia pliku wykonywalnego. Narzędzie to obsługuje wiele różnych bibliotek takich jak matplotlib, Django czy PyQt. Użytkownik nie musi stosować własnych modyfikacji w&nbsp;plikach lub skryptach konfiguracyjnych aby zintegrować je ze swoją aplikacją.
{:.text-justify} 

## Instalacja

Instalacja pakietu jest bardzo prosta i&nbsp;możemy wykorzystać do tego managera pakietów dostępnego w&nbsp;pythonie. Dla managera pip wystarczy wykonać instrukcję:
{:.text-justify} 

```bash
pip install pyinstaller
```

natomiast użytkowicy posługujący się condą powinni wydać polecenie:
{:.text-justify} 

```bash
conda install pyinstaller
```
Proces instalacji w&nbsp;środowisku windows dla condy powinien przebiec w&nbsp;sposób zbliżony do poniższego:
{:.text-justify} 

![Proces instalacji !]({{site.baseurl}}/img/python/pi_setup.jpg)

## Budowanie pliku wykonywalnego

Budowanie pliku wykonywalnego jest równie prosta jak proces instalacji. Wystarczy wydać polecenie _pyinstaller_ w&nbsp;linii poleceń i&nbsp;rozpocznie się budowa pakietu wykonywalnego. Włączenie dodatkowej flagi _--onefile_ powoduje wygenerowanie pojedynczego pliku wykonywalnego zawierającego wszystkie zależności wymagane do uruchomienia budowanej aplikacji. Bez włączenia tej opcji z&nbsp;wygenerowaną aplikacją będzie trzeba dostarczać wszystkich wymaganych bibliotek uruchomieniowych. Przykład rozpoczęcia budowy aplikacji zamieszczony został na listingu:
{:.text-justify} 

```bash
pyinstaller --onefile hello.py
```
Dla środowiska windows proces budowy będzie przebiegał w&nbsp;sposób zbliżony do poniższego:
{:.text-justify} 

![Proces budowy aplikacji !]({{site.baseurl}}/img/python/pi_build.jpg)

Wynikiem działania programu będzie plik wykonywalny który znaleźć będzie można w&nbsp;katalogu _dist_ który to zostanie utworzony w&nbsp;miejscu gdzie był budowany pakiet wykonywalny. Plik wykonywalny aplikacji będzie dosyć pokaźnego rozmiaru co jest związane z&nbsp;koniecznością opakowania skryptu w&nbsp;języku Python środowiskiem uruchomieniowym.
{:.text-justify} 

## Rozwiązania alternatywne

Oprócz zaprezentowanego Pyinstallera użytkownicy Pythona mają do dyspozycji:
{:.text-justify} 
- cx_Freeze
- py2exe

Moim zdaniem najlepszym rozwiązaniem jest jednak Pyinstaller ponieważ jest najłatwiejszy w&nbsp;użyciu oraz zgodny z&nbsp;wieloma różnymi platformami dzięki czemu w&nbsp;łatwy sposób można tworzyć aplikacje wykonywalne dla różnych systemów operacyjnych.
{:.text-justify} 