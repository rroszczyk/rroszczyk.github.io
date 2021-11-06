---
layout: post
title: Jak zbudować super szybki blog?
categories: [warsztat]
description: >
    Przyczyną pojawienia się tego wpisu były wielkie porządki, a przy okazji migracja zawartości niniejszego bloga na nową platformę.    
#accent_image: /assets/img/cover/warsztat-bg.jpg
#image: /assets/img/cover/warsztat-bg.jpg
img: cover/warsztat.jpg
copyrights: cover image Photo by Philip Swinburn on Unsplash
#hide_image: true
author: rroszczyk
comments: false
tags: [warsztat]
summary: 
---

Przyczyną pojawienia się tego wpisu były wielkie porządki. Przy okazji zawartości niniejszego bloga została przeniesiona na nową platformę oraz do nowego miejsca hostingowego. Usunięta została nieaktualna treść (w sumie to większość zawartości), kilka wpisów zostało mocno zmodyfikowanych, a całkiem sporo niestety czeka jeszcze na aktualizację. Zmiany te spowodowały, że blog stał się znacząco lżejszy i szybszy oraz zyskał nowy motyw. Motyw ten jest tylko tymczasowy, ale jak na razie spełnia swoją rolę.
{:.text-justify}

Swoją pierwszą osobistą stronę stworzyłem bardzo dawno temu przy użyciu czystego html, następnie zacząłem używać strong Google, a ostatnio Wodrpress'a. Jednak cały czas to nie było to czego potrzebowałem dlatego zacząłem szykować się do kolejnej zmiany. Niektórzy pomyślą sobie zaraz, zaraz, WordPress był nieodpowiedni? No właśnie wszystko zależy od punktu widzenia i aktualnych potrzeb. Nie mogę powiedzieć, że WordPress jest zły. Tym co mi nie odpowiadało jest jego budowa i skomplikowane działanie.Wymaga hostingu z obsługą php oraz serwera bazy danych. Przeniesienie na inny hosting jest bardzo skomplikowane. Ponadto przez cały czas trzeba dbać o jego bezpieczeństwo, aktualizować, dobierać wtyczki. Krótko mówiąc mnóstwo zachodu i ciągłe utrzymywanie hydrauliki... Co prawda mogłem wrócić do Google, ale to znowu wymaga wykorzystywania ich infrastruktury i powoduje przywiązanie do ich firmy.
{:.text-justify}

Właśnie wszystkie powyższe powody stały się przyczynkiem powrotu do starego i sprawdzonego mechanizmu statycznych stron www. Od czasu powstania pierwszej wersji mojej strony upłynęło mnóstwo czasu, zmieniały się technologie oraz narzędzia do ich tworzenia. Zmieniał się również wygląd samych strony oraz mechanizmy nimi rządzące, a dziś do ich tworzenia oraz utrzymania mamy całkiem zacny zestaw narzędzi. Dzięki temu strony statyczne w żaden sposób nie ustępują swoją funkcjonalnością stroną generowanym dynamicznie. Co więcej w niektórych obszarach nawet mają nad nimi przewagę w postaci dużo większej szybkości działania.
{:.text-justify}

Wiadomo już że używane są statyczne strony - to teraz będzie trochę o kuchni, czyli jak to zostało zrobione. I znowu najprościej jak tylko można, jako edytora do całości używam Visual Studio Code z moim ulubionym [zestawem wtyczek]. Natomiast strony są tworzone przy użyciu statycznego generatora [Jekyll]. Można by zapytać dlaczego Jekyll? Odpowiedź jest dosyć prosta, tworzenie bloga w oparciu o ten silnik jest bardzo, ale to bardzo proste. Ponadto biorąc pod uwagę, że jest bezpłatny i że mam większą kontrolę nad wyglądem i wykorzystywanymi funkcjami, a wynikowe strony są stronami statycznymi to wybór jest dosyć oczywisty. Dodatkowo generator ten jest wspierany przez github.
{:.text-justify}

## Jak przygotować stronę z użyciem Jekyll

Jeśli chcesz powielić moje rozwiązanie to recepta jest dosyć prosta. Najpierw należy zainstalować [Ruby] oraz [Jekyll]. W kolejnym kroku generujemy czysty szablon strony:
{:.text-justify}

```bash
jekyll new nazwa_strony
```

Powyższa komenda wygeneruje całą strukturę niezbędnych katalogów oraz inne rzeczy potrzebne do budowy naszej strony. Nowe posty umieszczamy w katalogu _posts natomiast konfigurację bloga znajdziemy w pliku _config.yml. Jeśli chcemy aby nasza strona miała swój indywidualny wygląd należy stworzyć dla niej odpowiedni motyw bądź skorzystać z gotowego dostosowując go do swoich potrzeb. Całkiem bogatą kolekcję motywów można znaleźć na stronie [Jekyll Themes]. Przed umieszczeniem strony w sieci warto sprawdzić czy wszystko prawidłowo działa. Do tego celu wystarczy poniższa komenda i nasza strona będzie widoczna lokalnie pod adresem: http://127.0.0.1:4000/.
{:.text-justify}

```bash
bundle exec jekyll serve
```

Po uruchomieniu lokalnej wersji strony w katalogu ze stroną można znaleźć podkatalog _site zawierający wygenerowaną statyczna stronę. Teraz wystarczy przegrać jego zawartość na serwer i strona będzie widoczna publicznie.
{:.text-justify}

To gdzie w końcu umieścić stronę? Tak jak pisałem wcześniej [Jekyll] pozwala na umieszczenie strony praktycznie wszędzie. Strony statyczne mają to do siebie, że nie potrzeba praktycznie niczego specjalnego do ich serwowania. Nie jest istotna wersja php, skryptów, etc. To rozwiązanie ma szereg zalet, strona jest bardzo szybka oraz bezpieczna. Dużo trudniej uszkodzić tego typu serwis niż serwis oparty o wordpress'a czy druppal'a. Ja osobiście polecam umieszczenie strony na github.com - jest to wystarczająco dobre rozwiązanie w większości przypadków, tym bardziej, że GitHub zapewnia mechanizm pozwalający na codzienne generowanie nowej wersji strony.
{:.text-justify}

Ok, a jak zrobić aby strona była utrzymywania na githubie. Okazuje się, że całość jest jeszcze łatwiejsza niż można przypuszczać. Wystarczy zawartość naszego katalogu umieścić w repozytorium o nazwie "nazwa_uzytkownika.github.io" i to wszystko. Mechanizm githuba sprawdza czy na konice użytkownika istnieje repozytorium o nazwie tożsamej z nazwą użytkownika rozszerzoną o "github.io" i jeśli je znajdzie to dokona kompilacji projektu i wystawi stronę na świat. Oczywiście repozytorium musi być dostępne publicznie.
{:.text-justify}

Dla użytkowników nieco bardziej zaawansowanych dostępnych jest wielu dostawców usług hostingowych np.: AWS, CloudCannon czy Netlify. Hosting strony statycznych jako mało wymagający w większości przypadków jest znacząco tańszy od utrzymania WordPress'a - zwłaszcza w przypadku gdy rozliczani będziemy z obciążenia serwera. A wielu dostawców hostingu w przypadku stron statycznych pozwala na ich bezpłatne utrzymanie.
{:.text-justify}

[Jekyll]: https://jekyllrb.com/ "Jekyll"
[Ruby]: https://www.ruby-lang.org/en/  "Ruby"
[Jekyll Themes]: http://jekyllthemes.org/ "JekyllThemes"
[zestawem wtyczek]: ../moje-ulubione-dodatki-do-visual-studio-code/ "Moje ulubione dodatki do Visual Studio Code"