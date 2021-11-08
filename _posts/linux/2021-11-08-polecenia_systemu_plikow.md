---
layout: post
toc: true
description: >
    Podstawowe polecenia powłoki bash, które każdy użytkownik terminala powinien znać aby szybko i sprawnie poradzić sobie z podstawowymi operacjami na plikach i katalogach.
#    Zwiększ swoją produktywność dzięki uniksowym poleceniom powłoki bash, czyli podstawowe polecenia terminala które każdy powinien znać.
hide_description: true
title: Podstawowe Polecenia Terminala Unix
categories: [linux] 
tags: [linux praktycznie, linux, bash, shell]
languages:
- pl
img: cover/keyboard.jpg
ximg: tmb/keyboard.jpg
author: rroszczyk
comments: false
#Photo by <a href="https://unsplash.com/@danist07?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Danist Soh</a> on <a href="https://unsplash.com/s/photos/build?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>  
#[LINUX - przewodnik praktyczny]  
---

## Zaprzyjaźnij się ze swoim terminalem
Praca w&nbsp;terminalu początkowo może wydawać sie bardzo skomplikowana. Domyślna powłoka **Linux Bash** może, wydawać się dość restrykcyjnym środowiskiem do pracy. Wielu użytkowników utknęło na braku podstawowej umiejętności z&nbsp;radzenia sobie w&nbsp;tekstowym środowisku. Natomiast prawda jest taka, że praca w&nbsp;terminalu jest całkiem przyjazna dla użytkownika -- jeśli tylko wiesz, jak się nim posługiwać. Tak więc, jeśli zamierzasz spędzić jakąkolwiek znaczącą ilość czasu używając linii poleceń to warto zapoznać się z podstawowymi poleceniami powłoki. Poniżej znajdziesz podstawowe polecenia pozwalające na operacje na elementach systemu plików.
{:.text-justify}

## Polecenia pozwalające na operacjach na plikach i katalogach
System plików to podstawowe miejsce trwałego przechowywania danych systemu operacyjnego. Nie ważne czy będziemy pracować w&nbsp;środowisku Windows czy Unix, każdy z&nbsp;nich przechowuje dane w&nbsp;postaci uporządkowanych zbiorów umieszczonych w&nbsp;określonych lokalizacjach systemu plików. Jako, że terminal najczęściej wykorzystywany jest w&nbsp;środowiskach Unixowych, to polecenia przedstawione będą na przykładach systemu plików środowiska Unix. [Rysunek 1](#rysunek_1) przedstawia fragment przykładowego systemu plików przedstawiającego katalogi oraz zbiory danych. Polecenia te mogą być również wykorzystywane przez użytkowników systemu windows z&nbsp;zainstalowanym podsystemem WSL (ang. Windows Subsystem for Linux).
{:.text-justify}

|![Struktura systemu plików !]({{site.baseurl}}/img/linux/file_system.png)|
|-|
|<a name="rysunek_1" />**Rysunek 1:** Struktura systemu plików|
{:.with-caption}

Podstawowe operacje na elementach systemu plików można wykonać przy pomocy poniższych poleceń:
{:.text-justify}
- [pwd](#pwd--pokaż-ścieżkę-do-bieżącego-katalogu) -- pokaż ścieżkę do bieżącego katalogu,
- [cd](#cd--zmiana-katalogu) -- zmiana katalogu,
- [ls](#ls--wyświetl-zawartość-katalogu) -- wyświetl zawartość katalogu,
- [mkdir](#mkdir--utworzenie-nowego-katalogu) -- utworzenie nowego katalogu,
- [cp](#cp--przekopiowanie-pliku-lub-katalogu) -- przekopiowanie pliku lub katalogu,
- [mv](#mv--zmiana-położenia-pliku-lub-katalogu) -- zmiana położenia bądź nazwy pliku lub katalogu,
- [rm](#rm--usunięcie-pliku-lub-katalogu) -- usunięcie pliku lub katalogu,
{:.without-bullet-justify}

### pwd -- pokaż ścieżkę do bieżącego katalogu
Polecenie pwd (ang. _print working directory_) wyświetla ścieżkę do katalogu (folderu), w&nbsp;którym właśnie się znajdujemy. Jest to katalog bieżący w którym są wykonywane wszystkie operacje.
{:.text-justify}
```bash
radek@laptop:~$ pwd
/home/radek
radek@laptop:~$
```

### cd -- zmiana katalogu
Do zmiany bieżącego katalogu służy polecenie cd (ang. _change directory_). Jako argument polecenia wpisujemy nazwę katalogu na który chcemy zmienić katalog roboczy.
{:.text-justify}

Poniższy przykład pokazuje zmianę katalogu bieżącego na katalog _dokumenty_
```bash
radek@laptop:~$ cd dokumenty
/home/radek/dokumenty
radek@laptop:~/dokumenty$ pwd
/home/radek/dokumenty
radek@laptop:~/dokumenty$
```

Jeśli chcemy przejść do katalogu domowego to niezależnie od miejsca w&nbsp;którym się znajdujemy wystarczy użyć polecenia _cd_ bez parametrów. Oprócz nazw katalogów możemy stosować specjalne nazwy katalogów:
{:.text-justify}
- **.** -- bieżący katalog,
- **..** -- katalog nad katalogiem bieżącym,
- **~** -- katalog domowy zalogowanego użytkownika,
- **/** -- główny katalog systemu plików.
{:.without-bullet-justify}

### ls -- wyświetl zawartość katalogu
Komenda _ls_ (ang. _list_) wyświetla zawartość wskazanego katalogu bądź katalogu w&nbsp;którym aktualnie się znajdujemy, czyli **katalogu bieżącego**.
{:.text-justify}
```bash
radek@laptop:~$ ls
dokumenty obrazy pobrane
radek@laptop:~$
```
Oprócz zwykłych plików i&nbsp;katalogów na dysku mogą znajdować się elementy ukryte. W&nbsp;linuxie nazwy tego typu elementów poprzedzone są znakiem kropki. Aby wyświetlić pliki ukryte należy użyć odpowiedniego przełącznika do polecenia _ls_. Najczęściej używane przełączniki to:
{:.text-justify}
- **-a** -- wypisuje wszystkie pliki&nbsp;i katalogi znajdujące włączając elementy ukryte,
{:.without-bullet-justify}
```bash
radek@laptop:~$ ls -a
. .. .bash_history .bashrc dokumenty obrazy pobrane .ssh
radek@laptop:~$
```
- **-al** -- wypisuje wszystkie pliki&nbsp;i katalogi znajdujące stosując rozszerzony format zapisu włączając elementy ukryte.
{:.without-bullet-justify}
```bash
radek@laptop:~$ ls -al
drwxr-xr-x 1 radek users    344 11-08 11:59 .
drwx------ 1 radek users    594 11-08 16:13 ..
-rw------- 1 radek users 105911 11-08 16:01  .bash_history
-rw-r--r-- 1 radek users   4003 10-08 10:58  .bashrc
drwxr-xr-x 1 radek users    578 11-02 15:25  dokumenty
drwxr-xr-x 1 radek users   3046 11-05 10:43  obrazy
drwxr-xr-x 1 radek users  42804 11-08 15:51  pobrane
drwx------ 1 radek users    212 10-18 13:11  .ssh
radek@laptop:~$
```
W katalogu, który zawiera wiele elementów przydatne mogą być wzorce uogólniające pozwalające zawęzić wyświetlane rezultaty:
{:.text-justify}
- **&#42;** -- zastępuje dowolny ciąg znaków,
- **?** -- zastępuje pojedynczy znak,
- **[]** -- zastępuje pojedynczy znak, ale używa do tego tylko znaki podane w nawiasie
{:.without-bullet-justify}

Poniższy przykład powoduje wyświetlenie plików tylko części zawartości katalogu dokumenty -- wyświetlone zostaną pliki których rozszerzenie to _.txt_ i&nbsp;w&nbsp;nazwie bezpośrednio przed rozszerzeniem musi występować cyfra _1_ lub _2_.
{:.text-justify}
```bash
radek@laptop:~$ ls -al ~/dokumenty/*[12].txt
-rw-r--r-- 1 radek users 0 11-05 12:31 /home/radek/Dokumenty/plik1.txt
-rw-r--r-- 1 radek users 0 11-05 12:31 /home/radek/Dokumenty/plik2.txt
radek@laptop:~$
```

### mkdir -- utworzenie nowego katalogu
Do tworzenia nowego katalogu należy użyć polecenie _mkdir_ (ang. _make directory_). Jako parametr wywołania polecenia należy podać nazwę katalogu do utworzenia. Jeżeli chcemy utworzyć jednocześnie kilka katalogów wystarczy ich nazwy rozdzielić spacją.
{:.text-justify}
```bash
radek@laptop:~$ mkdir projekty
mkdir: utworzony katalog 'projekty'
radek@laptop:~$ ls
dokumenty obrazy pobrane projekty
radek@laptop:~$ cd projekty
/home/radek/projekty
radek@laptop:~/projekty$ mkdir pierwszy drugi trzeci czwarty
mkdir: utworzony katalog 'pierwszy'
mkdir: utworzony katalog 'drugi'
mkdir: utworzony katalog 'trzeci'
mkdir: utworzony katalog 'czwarty'
radek@laptop:~/projekty$
```
W przypadku gdy chcemy utworzyć od razu kilka zagłębionych katalogów możemy posłużyć się parametrem _-p_.
```bash
radek@laptop:~$ mkdir -p projekty/pierwszy_projekt/podprojekt
mkdir: utworzony katalog 'projekty'
mkdir: utworzony katalog 'projekty/pierwszy_projekt'
mkdir: utworzony katalog 'projekty/pierwszy_projekt/podprojekt'
radek@laptop:~$ cd projekty/pierwszy_projekt/podprojekt
/home/radek/projekty/pierwszy_projekt/podprojekt
radek@laptop:~/.../pierwszy_projekt/podprojekt$ pwd
/home/radek/projekty/pierwszy_projekt/podprojekt
radek@laptop:~/.../pierwszy_projekt/podprojekt$
```

### touch -- utworzenie pustego pliku
Czasami jest potrzeba utworzenia pliku w określonej lokalizacji. Do tego celu służy polecenie _touch_. Polecenie to tworzy pusty plik oraz ustawia datę&nbsp;i czas modyfikacji tego pliku na moment jego utworzenia. Jeżeli jako argument polecenia podamy nazwę już istniejącego pliku zostanie zmieniona jego data i&nbsp;czas utworzenia na aktualną.
{:.text-justify}
```bash
radek@laptop:~/projekty$ touch plik1.txt plik2.txt plik3.txt
radek@laptop:~/projekty$ ls
czwarty  drugi  pierwszy  pierwszy_projekt  plik1.txt  plik2.txt  plik3.txt  trzeci
radek@laptop:~/projekty$ 
```

### cp -- przekopiowanie pliku lub katalogu
Do kopiowania plików służy polecenie _cp_ (ang. _copy_). Polecenie to pozwala utworzyć nam kopię pliku w&nbsp;katalogu z inną nazwą bądź przekopiować istniejący plik do określonej lokalizacji.
{:.text-justify}
```bash
radek@laptop:~/projekty$ cp plik1.txt plik4.txt
'plik1.txt' -> 'plik4.txt'
radek@laptop:~/projekty$ cp plik1.txt pierwszy_projekt/
'plik1.txt' -> 'pierwszy_projekt/plik1.txt'
```
Do kopiowania plików możemy również używać wzorców uogólniających _*_, _[]_, etc.
```bash
radek@laptop:~/projekty$ mkdir drugi_projekt
mkdir: utworzony katalog 'drugi_projekt'
radek@laptop:~/projekty$ cp *[24].txt drugi_projekt/
'plik2.txt' -> 'drugi_projekt/plik2.txt'
'plik4.txt' -> 'drugi_projekt/plik4.txt'
radek@laptop:~/projekty$ ls drugi_projekt/
plik2.txt  plik4.txt
radek@laptop:~/projekty$ 
```

### mv -- zmiana położenia pliku lub katalogu
Oprócz kopiowania możemy zaistnieć potrzeba przeniesienia już istniejących elementów do innej lokalizacji. Z&nbsp;pomocą przychodzi polecenie _mv_ (ang. _move_). Polecenie to oprócz przenoszenia elementów pozwala na zmianę ich nazwy. Korzystając z&nbsp;tego polecenia możemy wykorzystywać wzorce uogólniające.
{:.text-justify}
```bash
radek@laptop:~/projekty$ mv plik[12].txt trzeci_projekt/
przemianowany 'plik1.txt' -> 'trzeci_projekt/plik1.txt'
przemianowany 'plik2.txt' -> 'trzeci_projekt/plik2.txt'
radek@laptop:~/projekty$ mv plik4.txt nowy_plik.txt
przemianowany 'plik4.txt' -> 'nowy_plik.txt'
radek@laptop:~/projekty$ 

```

### rm -- usunięcie pliku lub katalogu
Do usuwania plików należy wykonać polecenie _rm_ podając jako parametr nazwę elementu do usunięcia. Możemy używać wzorców uogólniających analogicznie jak w&nbsp;poleceniu _ls_ czy _cp_. Domyślnie polecenie rm nie usuwa katalogów. Jeżeli chcemy aby usunięte zostały również katalogi należy użyć przełącznika&nbsp;_-r_. Do usunięcia pustych katalogów przydatny będzie przełącznik&nbsp;_-d_.
{:.text-justify}
```bash
radek@laptop:~/projekty$ rm -d *
rm: nie można usunąć 'drugi_projekt': Katalog nie jest pusty
rm: nie można usunąć 'pierwszy_projekt': Katalog nie jest pusty
rm: nie można usunąć 'trzeci_projekt': Katalog nie jest pusty
radek@laptop:~/projekty$ ls
drugi_rpojekt pierwszy_projekt trzeci_projekt
radek@laptop:~/projekty$ 
```
Powyższy przykład pokazał jak usunąć zawartość bieżącego katalogu włączając puste podkatalogi. W&nbsp;efekcie wykonania polecenia pozostawiony został jeden katalog który zawierał podkatalogi. Do jego usunięcia należy użyć przełącznika&nbsp;_-r_.
{:.text-justify}
```bash
radek@laptop:~/projekty$ rm -r pierwszy_projekt/ drugi_projekt/ trzeci_projekt/
radek@laptop:~/projekty$ ls
radek@laptop:~/projekty$ 
```

### Skróty klawiszowe

Na sam koniec kilka skrótów klawiszowych przydatnych w&nbsp;pracy z powłoką Bash.

| Skrót klawiszowy | Działanie | 
|:-:|-|
| ctrl + a | przesuń kursor na początek linii       |
| ctrl + e | przesuń kursor na koniec linii         |
| alt + f  | przesuń kursor o jedno słowo do przodu |
| alt + b  | przesuń kursor o jedno słowo do tyłu   |
| ctrl + f | przesuń kursor o jeden znak do przodu  |
| ctrl + b | przesuń kursor o jeden znak do tyłu    |
| ctrl + l | czyści okno terminala |
| ctrl + z | zawiesza działanie bieżącego procesu pozostawiając go w tle |
| ctrl + c | przerwanie działania programu poprzez wysłanie sygnału ___SIGINT___  |
| ctrl + d | zamknięcie sesji bash poprzez wysłanie znaku ___EOF___ |
{:.table-center}
<a name="table_1" />**Tabela 1:** Skróty klawiszowe przydatne w pracy z powłoką bash.
{:.caption-center}

Powyższe skróty klawiaturowe są dostępne w&nbsp;trybie pracy _emacs_ w Bashu, jeżeli wykorzystywany jest inny tryb pracy skróty mogą być nieco inne.
{:.text-justify}

