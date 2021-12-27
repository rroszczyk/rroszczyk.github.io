---
layout: post
toc: true
description: >    
    Zwyczajowo tworzone programy są kompilowane do postaci plików wykonywalnych. W tym wpisie przedstawiony został sposób tworzenia plików wykonywalnych dla języka Python.
hide_description: true
title: Python&#58; Transformacje Afiniczne
categories: [python] 
tags: [python praktycznie, python]
languages:
- pl
img: cover/build-unsplash.jpg
ximg: tmb/build-unsplash_x.jpg
author: rroszczyk
comments: false
#Photo by <a href="https://unsplash.com/@danist07?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Danist Soh</a> on <a href="https://unsplash.com/s/photos/build?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>  
#[PYTHON - przewodnik praktyczny]  
---

W tym artykule opiszę, sposób działania transformacji afinicznych na obrazie oraz jak wykonywać takie przekształcenia obrazów w języku Python.

Dla przestrzeni dwuwymiarowej każda operacja przekształcenia afinicznego może zostać opisana przy pomocy macierzy:

{% katex display %}
\begin{bmatrix}
x'\\
y'\\
1
\end{bmatrix} =\begin{bmatrix}
A & t\\
0 & 1
\end{bmatrix} \cdot \begin{bmatrix}
x\\
y\\
1
\end{bmatrix}
{% endkatex %}

To jest

| Typ transformacji | Macierz transformacji T| Operacje na obrazie |
|:-----------------:|:---------------------:|:-------------------:|
| Identyczność |$$\begin{bmatrix}1 & 0 & 0\\0 & 1 & 0\\0 & 0 & 1\\\end{bmatrix}$$|$$x'=x\\y'=y$$|
| Skalowanie   |$$\begin{vmatrix}c_{x} & 0 & 0\\0 & c_{y} & 0\\0 & 0 & 1\\\end{vmatrix}$$ |$$x'=c_{x} \cdot x\\y'=c_{y} \cdot y$$|
| Obrót        |$$\begin{vmatrix}cos\Phi  & sin\Phi  & 0\\-sin\Phi  & cos\Phi  & 0\\0 & 0 & 1\end{vmatrix}$$|$$x'=x\cdot cos\Phi -y\cdot sin\Phi\\y'=y\cdot cos\Phi +y\cdot sing\Phi $$|
{:.table-center}


Transformata w oparciu o macierz jednostkową nie będzie wprowadzała żadnych zmian w obrazie wyjściowym.

|![Identyczność !]({{site.baseurl}}/img/i/identity.png)|
|:-:|
|<a name="rysunek_1" />**Rysunek 1:** Wyjściowa figura|
{:.with-caption}


Najpierw zademonstruję niskopoziomowe operacje w Numpy, aby dać szczegółową geometryczną implementację. Następnie przejdę do bardziej praktycznego wykorzystania bibliotek Pythona Pillow i OpenCV.

Ten artykuł został napisany przy użyciu notatnika Jupyter, a źródło można znaleźć w moim repo na GitHubie, więc zapraszam do sklonowania / rozwidlenia go i eksperymentowania z kodem.

Przetłumaczono z www.DeepL.com/Translator (wersja darmowa)


Według Wikipedii transformacja afiniczna jest funkcjonalnym odwzorowaniem pomiędzy dwoma przestrzeniami geometrycznymi (afinicznymi), które zachowują punkty, proste i linie równoległe, jak również stosunki pomiędzy punktami. Wszystkie te matematycznie abstrakcyjne sformułowania sprowadzają się do luźno mówiąc liniowej transformacji, która skutkuje, przynajmniej w kontekście przetwarzania obrazu, jedną lub kilkoma manipulacjami takimi jak obracanie, odwracanie, skalowanie lub ścinanie poprzez zastosowanie macierzy transformacji.

Jedną z dobrych rzeczy jest to, że ponieważ jest to zasadniczo geometryczna operacja 2D, możemy ją zwizualizować. Zacznę od tabeli przekształceń afinicznych, które opisują każdy rodzaj manipulacji geometrycznej.

Przetłumaczono z www.DeepL.com/Translator (wersja darmowa)

Programy pisane w&nbsp;języku C&nbsp;czy C++&nbsp;zwyczajowo są kompilowane do postaci plików wykonywalnych. Niekiedy takowa funkcjonalność jest również potrzebna programistom piszącym w&nbsp;języku Python. Aby sprostać ich wymaganiom powstało wiele różnych narzędzi pozwalających budować pliki wykonywalne składające się z&nbsp;całego środowiska wykonywalnego dla Pythona oraz skryptów do uruchomienia. Jednym z&nbsp;takich programów jest Pyinstaller.
{:.text-justify} 

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