---
layout: post
title: SI w pisaniu pracy dyplomowej
internal-title: Sztuczna Inteligencja w pisaniu pracy dyplomowej - przewodnik
description: "Kompleksowy, praktyczny i zgodny z rekomendacjami Politechniki Warszawskiej przewodnik po możliwościach, ograniczeniach i etyce użycia generatywnej sztucznej inteligencji w pracy dyplomowej: od konspektu, przez literaturę i kod, po oświadczenie i listy kontrolne."
date: 2026-03-01
categories: [dydaktyka]
img: si/rabbit.webp
ximg: tmb/rabit_hole.png
tags: [praca dyplomowa, studia, SI, etyka, AI]
toc: true
mermaid: true
# slug: si-w-pisaniu-pracy-dyplomowej
copyrights: "Photo by Sincerely Media on Unsplash"
---

Sztuczna Inteligencja może realnie skrócić czas pracy nad pracą dyplomową, ale nie może jej "napisać za Ciebie". W **Politechnice Warszawskiej** obowiązuje logika: **Ty odpowiadasz za treść**, **weryfikujesz**, **nie podajesz danych osobowych w promptach**, a **materiały wytworzone przez generatywną sztuczną inteligencję muszą być wyraźnie oznaczone**. 
Ten wpis pokazuje, jak zrobić to mądrze: *przepływ pracy, wersjonowanie, prompty, wyjaśnienia, listy kontrolne, pułapki*.
{:.text-justify-has-drop-cap}

## Dlaczego w ogóle rozważać użycie SI w pracy dyplomowej?

W praktyce pisania pracy dyplomowej SI najczęściej "kupuje" czas: zdejmując z barków żmudne zadania (redakcja, porządkowanie literatury, sanity-check kodu, dopinanie bibliografii), uwalnia zasoby na to, co *jest oceniane*: problem, metodologia, eksperyment, krytyczna analiza i jakość wniosków. W realnej pracy ten "zysk" zwykle materializuje się w trzech obszarach:
{:.text-justify}

1. **Wybór i doprecyzowanie problemu** (szukanie niszy, metryk, kryteriów sukcesu).
2. **Implementacja i eksperymenty** (szkielety kodu, testy, refaktoryzacja, wyjaśnianie błędów, generowanie wariantów).
3. **Komunikacja naukowa** (struktura rozdziałów, dyskusja ograniczeń, spójność terminologii, korekta językowa).

Jednocześnie to właśnie w tych obszarach SI najłatwiej generuje **pozór jakości**: tekst brzmi mądrze, ale jest powierzchowny lub błędny; kod "wygląda poprawnie", ale błędnie interpretuje przypadki brzegowe. Dlatego całą resztę wpisu traktuj jako instrukcję **jak korzystać z SI, żeby nie wpaść do króliczej nory**.
{:.text-justify}

>
> <i class="fas fa-exclamation-circle"></i> **Ważne**
>
> Pamiętaj **SI to asystent, nie współautor**, a ostateczna odpowiedzialność spoczywa na **autorze**. Rekomendacje Politechniki Warszawskiej tylko to wzmacniają: odpowiedzialność użytkownika, weryfikacja, legalność, prywatność oraz obowiązek oznaczania treści generowanych przez sztuczną inteligencję.
>
{:.important .text-justify}

## Mapa procesu tworzenia pracy dyplomowej: gdzie SI pomaga, a gdzie najłatwiej o nadużycie
{:.text-justify}

Etapy pisania pracy dyplomowej można podzielić na kilka kluczowych faz, a każda z nich ma swoje specyficzne zadania i wyzwania.

### <i class="fas fa-project-diagram"></i>&nbsp;&nbsp;&nbsp;Planowanie: temat, zakres, pytania badawcze, kryteria sukcesu

**Sztuczna inteligencja pomaga**:
- wygenerować warianty tytułu i zakresu,
- doprecyzować pytania badawcze i hipotezy robocze,
- zaproponować strukturę rozdziałów zgodną z konwencją prac technicznych,
- rozbić projekt na kamienie milowe i sensowny harmonogram.

**Ryzyka**: 
- temat "ładny na slajdach", ale niewykonalny (brak danych, za duży zakres, brak metryk).

**Zabezpieczenia**: 
- SI może pomagać w robieniu burzy mózgów, ale *decyzje podejmujesz Ty* po konsultacji z promotorem.

### <i class="fas fa-search"></i>&nbsp;&nbsp;&nbsp;Badania: przegląd literatury, streszczanie, mapowanie obszaru tematycznego, identyfikacja luk

**SI pomaga**:
- wygenerować słowa kluczowe (synonimy, terminy branżowe, skróty),
- streszczać *dostarczone* publikacje,
- wyciągać metodologie i wnioski,
- identyfikować luki i spory w literaturze,
- proponować kolejne publikacje do przeczytania (na podstawie Twoich notatek),
- organizować notatki (np. tabela: publikacja -> metoda -> wnioski -> ograniczenia),
- budować mapę powiązań (co cytuje co, jakie są szkoły i spory).

Do tego celu można wykorzystać narzędzia pozwalające pracować z konkretnymi zadaniami, np.: semantyczne wyszukiwanie, inteligentne streszczenia, rekomendacje kontekstowe. 
{:.text-justify}

**Ryzyka**:
- "halucynacje" bibliografii (nieistniejące pozycje),
- błędna interpretacja wniosków (model domyśla się kontekstu),
- zbyt szybka synteza bez selekcji jakości.

**Zabezpieczenia**:
- nie dopuszczasz do pracy cytowania, którego nie potwierdziłeś w bazie/źródle,
- prowadzisz notatki z lektury (Twoje słowa + cytat z numerem strony),
- masz menedżer bibliografii (np. Zotero/Mendeley) i porządek metadanych.

### <i class="fas fa-flask"></i>&nbsp;&nbsp;&nbsp;Metodyka i projekt eksperymentu

Tu jest największa wartość — i największa pułapka. SI może pomóc w:
- zaproponować pipeline eksperymentalny (dane → preprocessing → model → ewaluacja),
- dobrać metryki i testy statystyczne (w uproszczonym zakresie),
- wygenerować plan porównawczy i ablation study,
- zidentyfikować zagrożenia trafności (validity threats).

**Ryzyka**:
- generowanie "standardowej" metodyki, która nie pasuje do Twoich danych,
- pseudo-uzasadnienia ("bo tak robią wszyscy"), bez źródeł,
- pomieszanie metryk (np. mylenie accuracy z balanced accuracy w klasach niezbalansowanych).

**Zabezpieczenia**: każdy element metodyki musi mieć jedną z trzech podstaw:
1. źródło - artykuł/standard,
2. empirię - twoje wyniki, opracowane własnymi skryptami, etc.,
3. argument techniczny - dlaczego akurat to działa w Twoim problemie.

SI może pomóc w sformułowaniu, ale nie może być fundamentem.

### <i class="fas fa-spinner fa-pulse fa-fw"></i>&nbsp;&nbsp;&nbsp;Implementacja i kod: gdzie SI jest najsilniejsze, ale też najniebezpieczniejsze

**SI pomaga**:
- szkicować strukturę repo (src/tests/config/docs),
- pisać testy jednostkowe i przykładowe dane,
- refaktoryzować (np. rozdzielenie warstw, lepsze nazwy, eliminacja duplikacji),
- tłumaczyć błędy, sugerować fixy,
- proponować zabezpieczenia i edge-case’y.

**Ryzyka**:
- podatności i złe praktyki bezpieczeństwa,
- błędy ukryte w "ładnym" kodzie,
- konflikt licencji / niejawne kopiowanie wzorców.

**Zabezpieczenie**:
- testy + statyczna analiza (lint, type-check, security linters),
- code review (nawet własne: "tryb recenzenta" w SI),
- commit history pokazująca Twój wkład i ewolucję rozwiązania.

### <i class="fas fa-pen"></i>&nbsp;&nbsp;&nbsp;Pisanie rozdziałów: SI jako "zapychacz stron", nie jako autor

W żadnym wypadku nie należy używać SI do generowania gotowych rozdziałów, które potem tylko "dopieszczasz". To jest dokładnie ten typ praktyki, który prowadzi do tekstu "ładnego, ale płytkiego" i jest łatwo wykrywalny przez detektory. SI może być użyte do wsparcia, ale nie do zastąpienia Twojej pracy intelektualnej.
{:.text-justify}

**SI pomaga**:
- ułożyć akapit: teza → argument → źródło → wniosek,
- zaproponować alternatywne ujęcia tego samego problemu,
- uporządkować logikę wywodu.

**Czerwone linie**:
- nie kopiujesz całych rozdziałów wygenerowanych przez model,
- nie pozwalasz SI "dopowiadać" wyników, których nie masz,
- nie cytujesz SI jako źródła naukowego.

### <i class="fas fa-check">&nbsp;&nbsp;&nbsp;Finalizacja pracy: styl, spójność, bibliografia, przygotowanie do obrony

**SI pomaga**:
- korekta językowa i styl akademicki (zwłaszcza spójność terminologii),
- sprawdzenie struktury rozdziałów i logiki argumentacji,
- sprawdzanie, czy wnioski wynikają z danych, a nie z narracji,
- kontrola spójności cytowań i bibliografii,
- przygotowanie do obrony: generowanie pytań i kontrargumentów.

**Ryzyka**:
- "wygładzenie" tekstu do poziomu, gdzie traci precyzję techniczną,
- ujednolicenie stylu (jeden z sygnałów, które detektory mogą interpretować jako tekst maszynowy) - zwłaszcza jak zostanie zrobione "za bardzo".

**Zabezpieczenia**: 
- finalny tekst brzmi jak *Ty* — precyzyjnie, technicznie, z Twoimi decyzjami. Nie zawsze "ładnie", ale "Twoje".

## Antyplagiat i detekcja SI: jak myśleć o ryzyku realistycznie

Aktualnie w Polsce funkcjonuje **JSA (Jednolity System Antyplagiatowy)** i opisuje daje możliwość rozszerzania weryfikacji o sygnały użycia SI. Niezależnie od nazwy konkretnego modułu, zasada bezpieczeństwa jest stała:
{:.text-justify}

>
> <i class="fas fa-exclamation-circle"></i> **Ważne**
>
> **Najlepszą obroną nie jest "ukrywanie", tylko transparentność + dowody procesu twórczego**.
>
{:.important .text-justify}


W praktyce "dowody procesu twórczego" to:
- repozytorium z historią commitów,
- notatnik eksperymentów (parametry, seed, wersje danych),
- skrypty generujące wykresy i tabele,
- log użycia SI (kiedy, do czego, co zweryfikowałeś),
- pliki robocze / wersje (nie tylko finalny PDF).

Warto stosować strategię wersjonowania tekstu. To jest dokładnie ten typ praktyki, który ułatwia obronę Twojego autorstwa:
- 1.0 surowy, 
- 1.5 wsparcie SI oznaczone, 
- 2.0 przepisanie własnymi słowami itd.

## "Kontrakt" z promotorem: ustal reguły na starcie

Wielu konfliktów da się uniknąć jedną rozmową w 1-2 tygodniu pisania praca. SI może być użyte do konspektu, a potem konspekt należy skonsultować z promotorem. Nie należy ukrywać, że korzystasz z SI, ale też nie musisz od razu wchodzić w szczegóły. Możesz zacząć od prostego kontraktu, który potem rozbudujesz w miarę postępów.

**Minimalny kontrakt** (1 strona, mail lub notatka):
- *Dozwolone*: brainstorming, konspekt, korekta językowa, propozycje testów, wsparcie w refaktoryzacji.
- *Niedozwolone*: generowanie gotowych rozdziałów, generowanie wyników, maskowanie plagiatu.
- *Wymagane*: ujawnienie w pracy + log użycia + weryfikacja źródeł.

>
> <i class="fas fa-exclamation-circle"></i> **Ważne**
>
> Jeśli promotor ma własne zasady — wygrywają zasady promotora (rekomendacje Politechniki Warszawskiej dopuszczają możliwość zakazu używania generatywnej sztucznej inteligencji konkretnych sytuacjach).
>
{:.important .text-justify}

## Przykładowy Workflow dla pracy dyplomowej - wariant praktyczny

Poniższy plan jest przykładowym rozwiązaniem które polecam moim dyplomantom. Dostosuj tygodnie do swojego kalendarza i trybu badań.

### Tydzień 1–2: Planowanie i konspekt
- SI: burza mózgów + 2–3 warianty struktury,
- Output: 1–2 strony konspektu + lista metryk + ryzyka + plan danych,
- Spotkanie: zatwierdzenie przez promotora.

### Tydzień 3–6: Literatura i metodyka
- SI: generowanie strategii wyszukiwania, streszczanie publikacji (z obowiązkowym cytowaniem fragmentów wejściowych), mapowanie sporów,
- Output: przegląd literatury w notatkach + tabela "publikacja → metoda → wnioski → ograniczenia".

### Tydzień 7–10: Implementacja i eksperymenty
- SI: szkielety kodu, testy, refaktoryzacja, diagnostyka błędów,
- Output: działający pipeline + raport wyników + skrypty reprodukcji.

### Tydzień 11–12: Finalizacja
- SI: korekta językowa, spójność terminologii, kontrola bibliografii, przygotowanie do obrony,
- Output: finalny tekst + aneks ujawnienie + listy kontrolne.

## Wersjonowanie i dokumentowanie: prosta metoda, która ratuje skórę

Powyższy workflow jest dobry, bo spełnia jednocześnie trzy cele: transparentność, jakość i obronę autorstwa. Transparentność, bo masz log użycia SI i historię wersji; jakość, bo każdy etap ma swoje zabezpieczenia; obrona autorstwa, bo pokazujesz ewolucję pracy i swój wkład.

### Proponowany schemat wersji
- **1.0**: surowe notatki / szkic (Twoje).
- **1.5**: rozbudowa z pomocą SI (*oznaczone fragmenty*).
- **2.0**: własne przeformułowanie i dopasowanie do kontekstu.
- **2.5**: weryfikacja źródeł + spójności + sanity check wyników.
- **3.0**: finalna redakcja + antyplagiat + przygotowanie obrony.

### Jak "oznaczać" fragmenty SI bez niszczenia pracy
Opcje:
- kolor w edytorze (tylko roboczo),
- komentarze w pliku Latex/Markdown,
- osobny plik loga z odwołaniami do sekcji.

## Jak opisać użycie SI w pracy: gotowe szablony (metodyka + aneks)

Poniższe szablony są zgodne z duchem rekomendacji PW o oznaczaniu materiałów GenSI.
Dostosuj do wskazówek promotora.

### Krótka sekcja w metodyce (1 akapit)
**Wykorzystanie narzędzi GenSI**  
W procesie przygotowania pracy wykorzystano narzędzia generatywnej sztucznej inteligencji wyłącznie jako wsparcie (m.in. do porządkowania konspektu, krytycznej weryfikacji spójności argumentacji oraz korekty językowej). Treści merytoryczne, definicje oraz odwołania do literatury zostały zweryfikowane przez autora na podstawie oryginalnych źródeł. Autor ponosi pełną odpowiedzialność za poprawność i kompletność pracy oraz stosuje zasady zgodne z rekomendacjami Politechniki Warszawskiej dotyczącymi korzystania z GenSI.
{:.text-justify}

### Aneks: rejestr użycia SI (SI usage log)
Możesz wkleić jako tabelę:

| Data | Narzędzie / model | Cel | Wejście (opis) | Wyjście (opis) | Weryfikacja (jak?) |
|---|---|---|---|---|---|
| 2026-03-01 | LLM | Konspekt rozdz. 2 | Notatki własne + lista źródeł | Propozycja nagłówków | Akceptacja promotora |
| 2026-03-12 | LLM | Recenzja dyskusji | Draft rozdz. 5 | Lista luk i sugestii | Poprawki + odniesienia do wyników |
| 2026-04-04 | LLM | Testy jednostkowe | Opis funkcji + API | Szkic testów | Uruchomienie w CI |

### Oświadczenie "co SI robiło, a czego nie robiło"
- SI **nie** generowało wyników ani danych.
- SI **nie** było źródłem naukowym.
- SI **nie** pisało finalnych rozdziałów w formie kopiuj-wklej.
- SI **było** użyte do korekty i wsparcia struktury / testów.

## Gotowe do użycia listy kontrolne do pracy dyplomowej tworzonej z pomocą sztucznej inteligencji (i nie tylko)
{:.text-justify}

### Lista kontrolna zgodności użycia SI z rekomendacjami Politechniki Warszawskiej
- Nie wklejałem do zapytań danych osobowych ani informacji niepublicznych,
- Każdy fakt i cytowanie zweryfikowałem w źródle,
- Oznaczyłem użycie generatywnej sztucznej inteligencji i podaję źródło narzędzia,
- Ustaliłem z promotorem dopuszczalny zakres użycia,
- Mam log użycia SI oraz historię wersji tworzenia pracy dyplomowej.

### Lista kontrolna jakości pracy dyplomowej (niezależnie od SI)
- Cel pracy jest mierzalny (metryki, kryteria sukcesu),
- Metodyka jest odtwarzalna (wersje, parametry, dane),
- Wyniki wynikają z uruchomionych eksperymentów, a nie z narracji,
- W dyskusji są ograniczenia i zagrożenia trafności,
- Wnioski nie wykraczają poza dane.

### Lista kontrolna do obrony
- Umiem uzasadnić wybór danych, metryk i architektury,
- Umiem wskazać 3 ograniczenia pracy i 3 kierunki rozwoju,
- Potrafię odtworzyć kluczowy eksperyment (polecenie/skrypt),
- Umieszczam w pracy informacje o użyciu SI i potrafię je wyjaśnić.

## Najczęstsze "wpadki" i jak ich uniknąć (z praktyki seminarium)

1. **SI wymyśla literaturę** -> rozwiązanie: żadnych cytowań bez potwierdzenia; SI ma dawać słowa kluczowe i tropy, ale nie może być źródłem naukowym.
2. **SI “dopowiada" wyniki** -> rozwiązanie: opis wyników tylko z tabel/wykresów generowanych przez Twoje skrypty.
3. **Brak dziennika pracy** -> rozwiązanie: proste dzienniki - markdow, text, etc... - z datą, celem, narzędziem, weryfikacją.
4. **Wklejanie danych wrażliwych** -> rozwiązanie: anonimizacja lub praca na streszczeniach/cechach, nie surowych rekordach; trzymanie się rekomendacji Politechniki Warszawskiej.
5. **Ujednolicony "SI-owy" styl** -> rozwiązanie: finalne przeformułowanie własnym językiem i dopasowanie do terminologii Twojej dziedziny.

## Rekomendacje Politechniki Warszawskiej, czyli zasady, które powinieneś znać zanim napiszesz pierwszy prompt

Senat Politechniki Warszawskiej w rekomendacjach o generatywnej sztucznej inteligencji podkreśla kilka kluczowych reguł praktycznych. Poniżej tłumaczę niektóre z nich.
{:.text-justify}

### SI jest dopuszczalne jako wsparcie — ale odpowiedzialność za treść jest Twoja

Rekomendacje mówią wprost: **za sposób wykorzystania treści wytworzonych przez generatywną sztuczną inteligencję odpowiada użytkownik**. 
Konsekwencja: na obronie nie działa "bo ChatGPT tak powiedział". Każde twierdzenie, każda decyzja architektoniczna, wykorzystana metodyka, zacytowana pozycja literatury oraz każdy wniosek musi być obroniony przez Ciebie.
{:.text-justify}

### Weryfikuj: SI może być niedokładne, wprowadzające w błąd lub przedstawiać nieprawdziwe fakty

To jest najważniejszy punkt praktyczny: rekomendacje zalecają **weryfikację i krytyczne podejście** do materiałów generowanych przez narzędzia SI. 
W pracy dyplomowej oznacza to dosłownie:
{:.text-justify}
- *fakty i definicje* -> sprawdzasz bezpośrednio w publikacji/standardzie/dokumentacji,
- *cytowania* -> sprawdzasz - czytasz, czy istnieją i czy rzeczywiście wspierają tezę,
- *wyniki* -> wynikają z Twoich danych, badań i skryptów, nie z narracji SI.

### Zasady prawne i prywatność: nie wklejaj danych osobowych i niepublicznych

W rekomendacjach PW jest wprost: **w zapytaniach do sztucznej inteligencji nie można podawać danych osobowych (w tym wrażliwych) ani innych informacji niepublicznych**, chyba że korzystasz z systemu działającego w infrastrukturze uczelni bez komunikacji z serwerami zewnętrznymi.
{:.text-justify}

Przekład na praktykę pracy dyplomowej:
- nie wklejasz do promptów surowych logów z danymi użytkowników,
- nie wklejasz treści umów/NDA,
- nie wklejasz kodu/konfiguracji z kluczami API, tokenami, hasłami,
- nie wklejasz danych klienta z pracy wdrożeniowej.

### Autorstwo i oznaczanie: treści SI muszą być wyraźnie oznaczone

Rekomendacje wskazują, że student **nie jest autorem treści wytworzonych przez SI** i dlatego **konieczne jest wyraźne oznaczenie takich materiałów z podaniem źródła pozyskania informacji**.

W praktyce pracy dyplomowej oznaczanie może wyglądać jak:
- akapit w metodyce: *"W procesie redakcji użyto narzędzi SI do korekty językowej oraz generowania propozycji struktury; treści merytoryczne zweryfikowano w źródłach; autor ponosi pełną odpowiedzialność ..."*,
- aneks: "Zakres wykorzystania narzędzi SI" + log użycia,
- w przypadku generowanych ilustracji/wykresów: adnotacja, które elementy były generowane.

### Prowadzący pracę dyplomową może zakazać użycia SI

Rekomendacje mówią również, że nauczyciel akademicki może bezpośrednio zakazać użycia SI w określonych zadaniach (kolokwia, egzaminy, ekspertyzy itd.). W swojej pracy dyplomowej interpretuj to pragmatycznie: **ustal z promotorem zasady gry na początku** i miej je w formie krótkiego "kontraktu".
{:.text-justify}

>
> <i class="fas fa-exclamation-circle"></i> **Ważne**
>
>Jeśli wdrożysz trzy rzeczy: **kontrakt z promotorem**, **wersjonowanie + log**, **twardą weryfikację źródeł i wyników**, to SI stanie się realną przewagą -- bez ryzyka, że w ostatnim tygodniu "coś wybuchnie".
>
{:.important .text-justify}

Więcej zasad znajdziesz bezpośrednio w dokumencie rekomendacji Politechniki Warszawskiej: [Rekomendacje dotyczące korzystania z generatywnej sztucznej inteligencji w Politechnice Warszawskiej].
{:.text-justify}

[Rekomendacje dotyczące korzystania z generatywnej sztucznej inteligencji w Politechnice Warszawskiej]: /pdf/stanowisko_senatu.pdf