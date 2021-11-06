---
layout: post
title: Kryptografia czyli sztuka pisania szyfrem
#tags: [kryptografia, DES, IDEA, LOTW, PGP, RSA, SSH, SSL]
categories: [kryptografia]
accent_image: /assets/img/key-bg.jpg
image: /assets/img/kryptografia/enigma_1600x600.jpg
img: kryptografia/enigma_1600x600.jpg
hide_image: true
author: rroszczyk
tags: [kryptografia, różne]
comments: false
---
![Kryptografia: Logo <](/assets/img/kryptografia/kryptografia_logo.png)Kryptografia czyli sztuka pisania szyfrem, zrozumiałym tylko dla wtajemniczonych - jest rozwijana od zarania dziejów. Już w starożytności dysponowano systemami przekazywania informacji, uniemożliwiającymi przeczytanie osobom niepowołanym pewnych treści.
Z upływem czasu potrzeba utajniania informacji wzrosła. Jeszcze kilka lat temu nie odczuwaliśmy zagrożeń, wynikających z utraty bądź niewłaściwego wykorzystania informacji. Obecnie bez szyfrowania nie byłoby możliwe działanie większości systemów informatycznych. Rozwój sieci komputerowych, zmniejszające się bariery w komunikacji między ludźmi rodzą potrzebę zabezpieczania naszych danych przed nieautoryzowanym dostępem. Dodatkowo pojawia się potrzeba zapewnienia integralności przekazywanych informacji oraz ich autoryzacji. Dużą rolę zaczynają odgrywać elektroniczne podpisy wiadomości oraz treści Internetowych.
{: .text-justify}

<!--more-->

Dzięki mechanizmom kryptograficznym możliwa jest elektroniczna wymiana informacji w systemach bankowych, przemyśle, sektorze usługowym oraz, oczywiście, w zastosowaniach prywatnych. Metody uwierzytelniania informacji pozwalają na robienie zakupów poprzez Internet, wydawanie zleceń giełdowych bądź podpisywanie wiadomości. Tym samym kryptografia staję się coraz ważniejszym elementem systemów komunikacyjnych.
{: .text-justify}

## Kodowanie i dekodowanie

Informacja, która może być przeczytana bez stosowania żadnych specjalnych zabiegów jest nazywana tekstem jawnym. Jeżeli chcemy ją bezpiecznie przekazać do odbiorcy - czyli tak, by nikt inny nie mógł jej przeczytać podczas transmisji - powinniśmy poddać ją procesowi szyfrowania. Kodowanie informacji polega na przekształceniu informacji jawnej w postać zaszyfrowaną, przy wykorzystaniu mniej lub bardziej skomplikowanych operacji matematycznych. Zaszyfrowane informacje mogą być przekazywane nawet przez otwarte kanały transmisyjne (do takich zalicza się Internet) - gdyby wiadomość była niezakodowana, mogłaby zostać przeczytana albo zmodyfikowana przez osobę postronną. Adresat, po odebraniu informacji zakodowanej, powinien poddać ją operacji odwrotnej do szyfrowania, czyli deszyfrowaniu.
{: .text-justify}

![Kryptografia: Zasada działania systemu kryptograficznego >](/assets/img/kryptografia/rys_1.png)Dobry system kryptograficzny powinien, oprócz możliwości odmowy dostępu do informacji, zapewniać metody uwierzytelniania oraz potwierdzania integralności przekazywanych wiadomości. Uwierzytelnianie pozwala na sprawdzenie  i potwierdzenie źródła (autora) informacji, natomiast integralność wiadomości daje pewność, że informacja nie została zmodyfikowana podczas transmisji.
{: .text-justify}

Bardzo ważną rolę w kryptografii odgrywa kompresja. Dzięki zagęszczeniu danych pochodzących ze źródła informacji zmniejsza się ilość danych do zakodowania, a więc i czas takiej operacji. Kompresja znacznie utrudnia dekodowanie informacji przez osobę nieupoważnioną. Informacje w postaci ściśniętej przypominają dane losowe, a więc są nadal trudne do odczytania w prosty sposób. Dodatkową i oczywistą zaletą kompresji jest to, że łatwiej jest transportować małe ilości danych.
{: .text-justify}

## Tradycyjne metody kryptograficzne

W tradycyjnej kryptografii, zwanej też kryptografią z tajnym kluczem do kodowania i dekodowania, używany jest jeden klucz. Dlatego metoda ta jest również zwana kryptografią symetryczną. Nadawca szyfruje informacje przy Kryptografia z kluczem symetrycznym użyciu klucza, a następnie przesyła kryptogram do odbiorcy przez niebezpieczny kanał. Oprócz kryptogramu musi też przesłać klucz kanałem bezpiecznym. Odbiorca, po otrzymaniu klucza i kryptogramu, jest w stanie odczytać informację. Taka metoda kodowania zapewnia ochronę oraz integralność wiadomości. Zakodowana informacja jest zupełnie nieprzydatna dla osób nie posiadających właściwego klucza. W przypadku gdy informacja uległa zmianie podczas przesyłania, zdekodowanie jej będzie niemożliwe, a to będzie oznaczało brak integralności wiadomości.
{: .text-justify}

![Kryptografia: Kryptografia z kluczem publiczny >](/assets/img/kryptografia/rys_2.png)Poważną wadą metody opartej na jednym kluczu jest konieczność posiadania bezpiecznego kanału do przekazania klucza. Drugim minusem jest wymóg silnej ochrony kluczy. Jeżeli w wymianie informacji bierze udział kilku uczestników i każdy ma klucz każdego, to utrata zbioru kluczy przez jednego z nich wiąże się z utratą bezpieczeństwa całego systemu wymiany informacji. Gdy klucz znajdzie się w posiadaniu osoby niepowołanej, będzie ona mogła zarówno czytać, jak i fałszować informacje. Bezpieczeństwo tego systemu zależy więc od bezpieczeństwa klucza.
{: .text-justify}

## Kryptografia z kluczem publicznym

Alternatywą dla tradycyjnych metod kodowania jest kryptografia z kluczem publicznym, zwana też metodą z dwoma kluczami. Nadawca do zakodowania informacji musi dostać od adresata jego klucz publiczny. Klucz ten może zostać przesłany przez niebezpieczny kanał transmisyjny. Taka możliwość pojawia się ze względu na asymetryczność klucza. Klucz publiczny może posłużyć tylko do zakodowania informacji, do jej odczytania potrzebny jest klucz prywatny.
{: .text-justify}

![Kryptografia: Kryptografia z dwoma kluczami >](/assets/img/kryptografia/rys_3.png)Przy użyciu klucza publicznego, otrzymanego od adresata, nadawca koduje informacje, a następnie przesyła ją do odbiorcy. Dodatkowo do wiadomości może zostać dołączony elektroniczny podpis nadawcy, generowany na podstawie klucza prywatnego nadawcy. Odbiorca, dzięki swojemu unikatowemu kluczowi prywatnemu, może odczytać otrzymaną informację. Podpis dołączony przez nadawcę może zostać zweryfikowany za pomocą klucza publicznego nadawcy. Weryfikacja ta pozwala na jednoznaczne określenie nadawcy.
{: .text-justify}

## Standardy szyfrowania danych

Najprostszą metodą szyfrowania jest kod Juliusza Cezara. Kodowanie to polega na przesuwaniu liter w alfabecie o określoną liczbę. Jeżeli chcemy zakodować napis TEST kodem Cezara z przesunięciem np. 3, to w pierwszym kroku przesuwamy litery alfabetu o 3 w prawo:
{: .text-justify}

AĄBCĆDEĘFGHIJKLŁMNŃOÓPQRSŚTUVWXYZŹŻ

po przesunięciu

DEĘFGHIJKLŁMNŃOÓPQRSŚTUVWXYZŹŻAĄBCĆ

Drugim i ostatnim krokiem będzie zamiana liter kodowanego ciągu zgodnie ze spreparowanym alfabetem. W wyniku tej operacji otrzymujemy zakodowany tekst YIWY. Oczywiście kod ten nie jest powszechnie używany ze względu na brak bezpieczeństwa, ale w znakomity sposób przedstawia metodę tradycyjnego szyfrowania.
{: .text-justify}

Standard szyfrowania DES (Data Encryption Standard) jest najczęściej stosowaną metodą kodowania z pojedynczym kluczem. Algorytm ten jest kodem blokowym (operującym na blokach danych). Do kodowania i dekodowania używany jest 56-bitowy klucz, a sam sposób kodowania i dekodowania niewiele się różni. Standard ten jest rozwijany przez Rząd Federalny Stanów Zjednoczonych i jest powszechnie stosowany przez bankowość do wykonywania elektronicznych transferów pieniężnych, do wymiany danych handlowych oraz w systemach pocztowych.
{: .text-justify}

Ze względu na ograniczenia prawne związane z eksportem algorytmów kryptograficznych poza granice Stanów Zjednoczonych, rozpoczęto prace nad algorytmem IDEA (International Data Encryption Standard). Algorytm ten został opatentowany w Europie i może być bezpłatnie stosowany do celów niekomercyjnych. Jest on używany m.in. w pakiecie PGP. Klucz wykorzystywany w operacjach kodowania i dekodowania ma długość 128 bitów i sprawdzenie wszystkich kombinacji do rozkodowania wiadomości jest praktycznie niemożliwe.
{: .text-justify}

Pierwszym systemem kryptograficznym z dwoma kluczami jest algorytm, który w 1975 stworzyli Whitfield Diffie i Martin Hellman. Polega on na obliczaniu dyskretnej funkcji wykładniczej oraz logarytmu dyskretnego. Wyliczony za pomocą tych operacji klucz, jest później wykorzystywany do kodowania informacji. System Diffiego-Hellmana jest niezwykle prosty, dzięki czemu można uzyskać dużą szybkość kodowania i dekodowania informacji.
{: .text-justify}

Szeroko stosowany jest system RSA (nazwa pochodzi od pierwszych liter nazwisk twórców: Ron Rivest, Adi Shamir, Leonard Adleman). Algorytm ten jest szyfrem blokowym, wykorzystującym do kodowania dwie duże liczby pierwsze. Liczby te stanowią klucz prywatny, na ich podstawie obliczany jest klucz publiczny. Obliczenie klucza prywatnego na podstawie publicznego jest praktycznie niemożliwe – dla liczb o długości 200 cyfr dziesiętnych obliczenie klucza prywatnego z wykorzystaniem superkomputera wymagałoby około pół miliona lat.
{: .text-justify}

Spotykane są jeszcze następujące systemy: system Elgamala (nazwa pochodzi od jego twórcy Taher Elgamal) oraz DSA (Digital Signature Algorithm), stworzony przez Davida Kravitza. Systemy te nie zdobyły jednak dużej popularności.
{: .text-justify}

## Podpis elektroniczny

W przesyłaniu elektronicznej informacji największe znaczenie ma jej autentyczność. Dużo częściej zachodzi potrzeba sprawdzenia, czy informacja jest prawdziwa (tzn. pochodząca bezpośrednio z tego źródła, które jest w niej podane) niż jej kodowania. Do tego celu, podobnie jak w tradycyjnym systemie uwierzytelniania, używamy podpisów. Podpis elektroniczny Kryptografia: Zasada podpisywania elektronicznej wiadomości musi charakteryzować się kilkoma cechami. Przede wszystkim powinien pozwolić w jednoznaczny i niezaprzeczalny sposób określić osobę podpisującą wiadomość. Musi być też łatwy do sprawdzenia przez adresata, przy jednoczesnym braku możliwości jego podrobienia. Warunki te spełnia system kryptograficzny z dwoma kluczami. W takim systemie nadawca koduje informacje, używając swojego prywatnego klucza i wysyła wersję zakodowaną oraz rozkodowaną. Odbiorca, za pomocą klucza publicznego, koduje jawną część wiadomości. Jeśli jest ona taka sama, jak część zakodowana, to mamy pewność, że informacja jest prawdziwa (w przedstawionym wyżej rozumieniu).
{: .text-justify}

![Kryptografia: Zasada podpisywania wiadomości elektronicznej >](/assets/img/kryptografia/rys_4.png)Metoda uwierzytelniania korzystająca z kluczy asymetrycznych w opisany sposób ma jednak wady. Po pierwsze, wymaga przesłania dużej ilości danych – wiadomości zakodowanej i wiadomości jawnej. Po drugie, proces kodowania jest powolny. Z tego powodu do uwierzytelniania używa się połączenia systemu kryptograficznego z dwoma kluczami oraz funkcji mieszających. Funkcja mieszająca jest rodzajem funkcji matematycznej, przekształcającej duży zbiór danych wejściowych w mały zbiór. Stosując funkcję mieszającą przekształcamy wiadomość oryginalną w mały blok kontrolny. Przekształcenie to musi być skonstruowane w taki sposób, by zmiana jednego bitu wiadomości oryginalnej powodowała dużą zmianę w bloku kontrolnym. Następnie kodujemy blok kontrolny, łączymy go z jego niezakodowaną wersją i dołączamy do wiadomości oryginalnej jako elektroniczny podpis. Blok kontrolny zazwyczaj ma długość 160 bitów.
{: .text-justify}

## Certyfikaty cyfrowe

Stosując system kryptograficzny z publicznym kluczem, użytkownik nadający wiadomość musi mieć całkowitą pewność, że używa klucza osoby, do której wysyła wiadomość. W przypadku gdy klucze są wymieniane przez proste umieszczenie ich na serwerze kluczy, istnieje potencjalne zagrożenie, że zostanie tam umieszczony klucz przez osobę podającą się za kogoś innego, a my użyjemy tego klucza. Dla przykładu, serwery kluczy PGP przyjmują klucze poprzez system poczty elektronicznej, a osoba generująca klucz podpisuje go sama.
{: .text-justify}

W ten sposób można umieścić dowolny klucz. Przykładowo można wygenerować klucz i podpisać go: Prezydent Polski <prezydent@gov.pl> Gdy otrzymamy wiadomość sygnowaną tym podpisem i z serwera kluczy pobierzemy ten właśnie klucz publiczny, to będziemy uważali, że nadawcą był prezydent. System działa więc bezbłędnie, a klucz, znajdując się w niepowołanych rękach, wprowadza nas w błąd.
{: .text-justify}

Jednym ze sposobów rozwiązania tego problemu jest wysyłanie wiadomości tylko do osób, od których otrzymaliśmy klucz publiczny poprzez bezpieczny kanał. To jednak w znaczny sposób ogranicza liczbę osób, z którymi można w bezpieczny sposób korespondować. Takie rozwiązanie jest bardzo kosztowne, gdy trzeba przekazać klucz na dużą odległość. W celu zapewnienia bezpiecznej wymiany kluczy został wprowadzony system certyfikatów. Certyfikat jest dokumentem zaświadczającym, że dana rzecz jest oryginalnego pochodzenia. Aby certyfikat był godny zaufania, musi zostać nadany przez osobę, do której mamy zaufanie. Osoba, która chce korzystać z klucza certyfikowanego, po otrzymaniu klucza sprawdza, czy jego certyfikat jest zgodny z posiadanymi wzorami certyfikatów osób zaufanych. Jeśli test zgodności wypadł pozytywnie, można mieć pewność, że certyfikat jest oryginalny.
{: .text-justify}

Certyfikat cyfrowy różni się od certyfikatu będącego fizycznym dokumentem jedynie tym, że jest w postaci elektronicznej. Cyfrowy certyfikat zawiera, oprócz publicznego klucza osoby, jej dane personalne, identyfikator, datę nadania oraz datę ważności. Dodatkowo są umieszczone cyfrowe podpisy zaufanych osób. Jeden klucz może zostać autoryzowany przez więcej niż jedną osobę, co podnosi poziom zaufania wobec klucza.
{: .text-justify}

Działanie certyfikatów opisuje następujący przykład. Pomiędzy pracownikami firm A i B wymieniana jest zaszyfrowana korespondencja. W zakładzie A zostaje zatrudniona nowa osoba, powiedzmy Piotr, równocześnie pracuje tam już Paweł, który jest znany w firmie B. Jeżeli Paweł podpisze klucz Piotra, to Piotr będzie mógł wysyłać wiadomości do firmy B oraz certyfikowany klucz. Osoba pracująca w firmie B, po otrzymaniu wiadomości i klucza od Piotra, może wątpić w autentyczność informacji, gdyż nie zna Piotra. Osoba ta ma jednak cyfrowy wzorzec certyfikatu Pawła i opierając się na zaufaniu do Pawła sprawdza zgodność klucza Piotra. W ten sposób można zaufać informacji od Piotra, wcale go nie znając. Do podpisywania i kodowania wiadomości wykorzystuje się nadal prywatne i publiczne klucze, certyfikaty pozwalają jedynie na weryfikację autentyczności kluczy przekazywanych przez niebezpieczne kanały transmisyjne.
{: .text-justify}

## Prawdziwość i zaufanie

W systemie z cyfrowymi certyfikatami nadal istnieje pewne ryzyko. Podczas operacji certyfikowania klucza musimy mieć pewność, że klucz, który będziemy certyfikowali, jest oryginalny. Musimy mieć też odpowiedni zestaw wzorców kluczy osób zaufanych. Tak więc prawdziwość klucza i zaufanie do certyfikatów jest podstawowym problemem w kryptograficznym systemie wymiany informacji.
{: .text-justify}

W celu wyeliminowania problemu prawdziwości i zaufania powstały centra autoryzacyjne (CA). Centrum takie zajmuje się nadawaniem certyfikatów dla osób prywatnych i przedsiębiorstw, które chcą brać udział w zaufanym systemie wymiany informacji. Każdy, kto chce mieć certyfikat, kontaktuje się z centrum autoryzacyjnym przez bezpieczny kanał. Po uzyskaniu odpowiednich certyfikatów może przesyłać klucze publiczne niebezpiecznymi kanałami. Odbiorca klucza może sprawdzić jego autentyczność w odpowiednim centrum autoryzacyjnym bądź porównując go z wzorcem certyfikatu danego centrum.
{: .text-justify}

Pozostaje jeszcze przyjrzeć się kwestii zaufania do kluczy. Spotyka się trzy podstawowe modele zaufania:

* bezpośrednie zaufanie,
* hierarchiczne zaufanie,
* sieć zaufania.

Zaufanie bezpośrednie jest najprostszym modelem zaufania. W tym rozwiązaniu użytkownik ma pewność, że klucz jest prawdziwy, ponieważ pochodzi on z zaufanego źródła. Na przykład, w przeglądarce WWW klucz podstawowego centrum autoryzacyjnego jest zaufany, ponieważ jest on tam umieszczony przez producenta przeglądarki. Hierarchia zaufania polega na zasadzie drzewa zaufania. Korzeniem drzewa jest CA bądź zaufana osoba. Od drzewa odchodzą gałęzie, na których znajdują się zaufani przedstawiciele. Osoby korzystające z systemu kontaktują się z autoryzowanymi przedstawicielami i w ten sposób mogą autoryzować swoje klucze.
{: .text-justify}

W przypadku gdy musimy sprawdzić autoryzację jakiegoś klucza, kontaktujemy się ze swoim przedstawicielem, a on sprawdza zgodność certyfikatu w CA bądź u innych przedstawicieli. Sieć zaufania jest rozwiązaniem łączącym zaufanie bezpośrednie i hierarchię zaufania. Wykorzystywana jest zasada, że kilka źródeł certyfikatów jest lepsze niż jedno. Występuje tu kilka sposobów zaufania do klucza: zaufanie bezpośrednie – klucz pochodzi ze znanego źródła, zaufanie hierarchiczne – klucz jest pobierany od jednego z przedstawicieli bądź z CA. W tym modelu może wystąpić kilka drzew hierarchii oraz kilkanaście zaufanych źródeł.
{: .text-justify}

### Kryptografia, a system PGP

PGP (Pretty Good Privacy) jest kryptograficznym systemem szyfrująco-deszyfrującym, przeznaczonym do szyfrowania i podpisywania poczty elektronicznej. System ten należy do grupy systemów hybrydowych – zostały w nim połączone najlepsze cechy systemów z Kryptografia: Zasada kodowania wiadomości w systemie PGPkluczem tajnym i publicznym (rys. 5). Pierwszą operacją wykonywaną przez system PGP na danych wejściowych jest ich kompresja, następnie są one zakodowane za pomocą algorytmu z tajnym kluczem. Klucz wymagany do kodowania zostaje wygenerowany losowo. Kolejną operacją jest zakodowanie klucza symetrycznego za pomocą klucza publicznego. Po połączeniu obu informacji mamy informację zakodowaną.
{: .text-justify}

![Kryptografia: Zasada kodowania wiadomości w systemie PGP >](/assets/img/kryptografia/rys_5.png)Do odkodowania należy użyć klucza prywatnego. Rozkodowujemy najpierw klucz symetryczny, a następnie przy jego użyciu rozkodowujemy wiadomość. Bardzo często do wiadomości zakodowanej zostaje dołączony elektroniczny podpis jednoznacznie identyfikujący nadawcę. Takie rozwiązanie systemu kryptograficznego zostało stworzone w celu przyspieszenia operacji kodowania.
{: .text-justify}

Kodowanie przy wykorzystaniu metod tradycyjnych jest około 1000 razy szybsze niż kodowanie z użyciem klucza publicznego i prywatnego. Używając kompresji z kluczem publicznym, tworzymy bezpieczny kanał transmisyjny dla klucza symetrycznego, za pomocą którego kodowana jest informacja. Poziom bezpieczeństwa zakodowanej informacji zależy od długości klucza – im klucz jest dłuższy, tym informacja bezpieczniejsza.
{: .text-justify}

### SSH

SSH (Secure Shell) jest programem pozwalającym na zalogowanie się do zdalnej maszyny, a następnie na pracę w chronionej sesji. Narzędzie to jest bardzo przydatne dla administratorów systemów, którzy muszą łączyć się ze zdalnym serwerem w celach administracyjnych poprzez Internet. Dzięki zastosowaniu kodowania sesji nie jest możliwe podglądanie przesyłanych informacji, co oznacza, że operacje wykonywane przez administratora nie dostaną się w niepowołane ręce. Głównie chodzi o ochronę haseł dostępowych do kont na zdalnych maszynach.
{: .text-justify}

### SSL

Protokół SSL (Secure Socket Layer) został zaprojektowany do zapewnienia bezpieczeństwa pomiędzy dwoma komunikującymi się ze sobą aplikacjami. Protokół ten pozwala na autoryzację serwera i klienta. Jego podstawowym zastosowaniem jest przesyłanie informacji w postaci zakodowanej pomiędzy przeglądarką WWW a serwerem. Protokół ten umożliwia ochronę praktycznie wszystkich usług internetowych. Można korzystać z sesji chronionych FTP, TELNET oraz dowolnie wybranych innych usług, np. kodowanego dostępu do baz danych.
{: .text-justify}

### LOTW

System LoTW (Logbook of The World) został stworzony w 2003 roku przez Amerykańską Zrzeszenie Krótkofalarskie (ARRL). Od tamtego czasu system ten jest używany do potwierdzania dwustronnej łączności pomiędzy krótkofalarzami na całym świecie. Do potwierdzania autentyczności nadawcy oraz zapewnienia integralności wymienianych danych wykorzystywany jest podpis elektroniczny.
{: .text-justify}

### Inne zastosowania kryptografii

Elektroniczne systemy kryptograficzne są stosowane wszędzie tam, gdzie potrzebne jest zaufanie do przekazywanej informacji. Najpowszechniejszym zastosowaniem systemów kryptograficznych jest wymiana poczty elektronicznej z podpisami. Tu najczęściej używany jest system z dwoma kluczami (prywatnym i publicznym). Kolejnym zastosowaniem są elektroniczne transfery pieniężne, w tej branży ważne jest zarówno zaufanie, jak i integralność informacji. Nikt nie chciałby zostać narażony na straty finansowe.
{: .text-justify}

W Internecie pojawia się coraz więcej wirtualnych sklepów. Robiąc w nich zakupy, podajemy numery kart kredytowych, numery czeków oraz dane personalne – wszystkie te informacje mogą być łakomym kąskiem dla internetowych przestępców. Z tego powodu nigdy nie powinny być przesyłane w niezabezpieczony sposób. Sklepy internetowe wykorzystują właśnie metody kryptograficzne do zabezpieczenia informacji przesyłanych pomiędzy sklepem a kupującym. Najczęściej wykorzystywany jest protokół SSL.
{: .text-justify}

Innym przykładem zastosowania metod bezpiecznego przesyłania informacji stał się nasz rodzimy Zakład Ubezpieczeń Społecznych. Wykorzystuje on system kluczy publicznych, autoryzowanych w CA, do wymiany informacji pomiędzy oddziałami ZUS-u i płatnikami. Do tego celu wykorzystywany jest tzw. podpis kwalifikowany.
{: .text-justify}

Pierwotną wersję niniejszego tekstu opublikowałem na łamach PCKuriera numer 18/1999 i&nbsp;była opatrzona tytułem "Enigmatyczne wyzwania". Z tego co wiem w czeluściach Internetu jeszcze można ją znaleźć w oryginalnej wersji.
{: .text-justify}