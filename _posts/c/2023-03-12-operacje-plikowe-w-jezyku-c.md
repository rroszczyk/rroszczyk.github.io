---
layout: post
title: Operacje plikowe w języku C
#tags: [kryptografia, DES, IDEA, LOTW, PGP, RSA, SSH, SSL]
categories: [programowanie]
accent_image: /assets/img/key-bg.jpg
image: /img/kryptografia/enigma_1600x600.jpg
img: cover/files.png
ximg: tmb/files.jpg
hide_image: true
author: rroszczyk
tags: [c]
comments: false
description: >
    Kryptografia czyli sztuka pisania szyfrem, zrozumiałym tylko dla wtajemniczonych. W niniejszym tekście znajdziesz krótkie wprowadzenie do współczesnych metod kryptograficznych używanych w systemach informatycznych.
---

Dzięki temu przewodnikowi poznasz obsługę plików w&nbsp;języku&nbsp;C. Nauczysz się obsługiwać standardowe wejście / wyjście używając bazowych instrukcji języka&nbsp;C - ***fprintf()***, ***fscanf()***, ***fread()***, ***fwrite()***, ***fseek()*** itp. 
{: .text-justify}

<!--more-->

### Typy plików
Mając do czynienia z plikami, należy wiedzieć o dwóch ich rodzajach:
- pliki tekstowe,
- pliki binarne.

Obydwa rodzaje plików nieco różną się od siebie z punktu widzenia zawartości oraz sposobu obsługi. Każdemu z nich są dedykowane nieco inne funkcje.
{: .text-justify}

#### Pliki tekstowe

Pliki tekstowe to zwykłe pliki zawierające dane tekstowe. Najczęściej mają rozszerzenie .txt. Możesz łatwo tworzyć pliki tekstowe za pomocą dowolnego prostego edytora tekstu.
{: .text-justify}

Kiedy otworzysz tego typu pliki, zobaczysz całą zawartość w pliku jako zwykły tekst. Pliki te można prosto zmieniać i&nbsp;edytować. Wymagają one minimalnego wysiłku w&nbsp;utrzymaniu, są łatwe do odczytania, jednakże zapewniają najmniejsze bezpieczeństwo i&nbsp;zajmują więcej miejsca na dysku.
{: .text-justify}

#### Pliki binarne

Pliki binarne to najczęściej pliki zawierające dane binarne. Zwyczajowo mają różne rozszerzenia zależnie od tego co jest w nich przechowywane i&nbsp;jaki program je utworzył. Zamiast przechowywać dane w postaci zwykłego tekstu, przechowują je w&nbsp;postaci binarnej. Mogą pomieścić większą ilość danych, są dużo trudniejsze do odczytania ale&nbsp;mogą zapewniać dużo lepsze bezpieczeństwo niż pliki tekstowe.
{: .text-justify}

### Operacje na plikach

W języku C&nbsp;można wykonywać cztery główne operacje na plikach, zarówno tekstowych jak i&nbsp;binarnych:

- tworzenie nowego pliku,
- otwieranie istniejącego pliku,
- zamykanie pliku,
- odczyt z i zapis informacji do pliku.

#### Uchwyt pliku

Podczas pracy z&nbsp;plikami należy zadeklarować wskaźnik typu FILE. Zmienna zdeklarowana w&nbsp;ten sposób stanowi uchwyt pliku, który jest wykorzystywany do komunikacji między systemem operacyjnym, a&nbsp;programem. 
{: .text-justify}

```c
FILE *fptr;
```

#### Otwieranie pliku do odczytu oraz zapisu

Otwieranie pliku odbywa się za pomocą funkcji *fopen()* zdefiniowanej w&nbsp;pliku nagłówkowym *stdio.h*.

Składnia otwarcia pliku dla standardowego wejścia / wyjścia to:

```c
ptr = fopen("plik_do_otwarcia", "mode");
```

przykładowo:

```c
fopen("nazwa_pliku.txt", "w");

fopen("nazwa_pliku.bin", "rb");
```

Załóżmy, że plik nazwa_pliku.txt nie istnieje. Pierwsza funkcja tworzy nowy plik o&nbsp;nazwie nazwa_pliku.txt i&nbsp;otwiera go do zapisu zgodnie z&nbsp;trybem 'w'.
Tryb pisania pozwala na tworzenie i&nbsp;edycję (nadpisywanie) zawartości pliku.

Załóżmy teraz, że drugi plik binarny nazwa_pliku.bin istnieje. Druga funkcja otwiera istniejący plik do odczytu w&nbsp;trybie binarnym&nbsp;'rb'.
Tryb czytania pozwala tylko na odczytanie pliku, nie można do niego pisać.

| Tryb    | Funkcja trybu                                                | Uwagi                                                        |
| ------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **r**   | Otwarcie do odczytu                                          | Jeśli plik nie istnieje, funkcja fopen() zwraca NULL.        |
| **rb**  | Otwarcie do odczytu w trybie binarnym                        | Jeśli plik nie istnieje, funkcja fopen() zwraca NULL.        |
| **w**   | Otwarcie do zapisu                                           | Jeśli plik istnieje to zostanie nadpisany, jeśli plik nie istnieje to zostanie utworzony. |
| **wb**  | Otwarcie do zapisu w trybie binarnym                         | Jeśli plik istnieje to zostanie nadpisany, jeśli plik nie istnieje to zostanie utworzony. |
| **a**   | Otwiera plik w trybie dodawania danych. Dane są dopisywane na końcu pliku. | Jeśli plik nie istnieje to zostanie utworzony.               |
| **ab**  | Otwiera plik w trybie dodawania danych. Dane są dopisywane na końcu pliku. | Jeśli plik nie istnieje to zostanie utworzony.               |
| **r+**  | Otwiera plik do odczytu i zapisu.                            | Jeśli plik nie istnieje, funkcja fopen() zwraca NULL.        |
| **rb+** | Otwiera plik do odczytu i zapisu w trybie binarnym.          | Jeśli plik nie istnieje, funkcja fopen() zwraca NULL.        |
| **w+**  | Otwiera plik do zapisu i odczytu.                            | Jeśli plik istnieje to zostanie nadpisany, jeśli plik nie istnieje to zostanie utworzony. |
| **wb+** | Otwiera plik do zapisu i odczytu w trybie binarnym.          | Jeśli plik istnieje to zostanie nadpisany, jeśli plik nie istnieje to zostanie utworzony. |
| **a+**  | Otwiera plik w trybie dodawania danych oraz odczytu.         | Jeśli plik nie istnieje to zostanie utworzony.               |
| **ab+** | Otwiera plik w trybie dodawania danych oraz odczytu w trybie binarnym | Jeśli plik nie istnieje to zostanie utworzony.               |

#### Odczyt i zapis plików tekstowych

Do odczytu i&nbsp;zapisu do pliku tekstowego używamy funkcji ***fprintf()*** oraz ***fscanf()***.

Są one po prostu plikowymi odpowiednikami funkcji ***printf()*** oraz ***scanf()***. Jedyna różnica polega na tym, że ***fprintf()*** oraz ***fscanf()*** wymagają podania wskaźnika do struktury ***FILE***.

##### Przykład 1: zapis do pliku tekstowego

Poniższy program pobiera od użytkownika liczbę i&nbsp;zapisuje w pliku *plik.txt*.

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
   int num;
   FILE *fptr;

   // zamiast nazwy plik.txt można użyć innej wraz ze ścieżką dostępu
   fptr = fopen("plik.txt", "w");

   if(fptr == NULL)
   {
      printf("Błąd!");   
      exit(1);             
   }

   printf("Podaj liczbę: ");
   scanf("%d", &num);

   fprintf(fptr, "%d", num);
   fclose(fptr);

   return 0;
}
```

Po skompilowaniu i&nbsp;uruchomieniu powyższego programu można zobaczyć plik tekstowy o&nbsp;nazwie *plik.txt* utworzony w&nbsp;katalogu w&nbsp;którym został uruchomiony program. Po otwarciu tego pliku widać liczbę wpisaną przez użytkownika zapisaną w postaci tekstu.

##### Przykład 2: odczyt z pliku tekstowego

Poniższy program otwiera wcześniej utworzony plik o&nbsp;nazwie *plik.txt* i&nbsp;wczytuje z&nbsp;niego zapisaną liczbę.

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
   int num;
   FILE *fptr;

   if ((fptr = fopen("plik.txt", "r")) == NULL) {
       printf("Błąd otwarcia pliku!");

       // Koniec działania - zwracamy błąd numer 1
       exit(1);
   }

   fscanf(fptr,"%d", &num);

   printf("Liczba wczytana z pliku to: %d", num);
   fclose(fptr); 
  
   return 0;
}
```

Powyższy program odczytuje liczbę całkowitą znajdującą się w pliku *plik.txt*, a następnie wypisuje ją na ekranie.

Jeśli udało się stworzyć plik przy użyciu programu z przykładu 1, to uruchomienie tego programu da liczbę całkowitą, wcześniej którą wprowadziłeś.

W podobny sposób można wykorzystać inne funkcje do wczytywania danych z pliku, takie jak ***fgetchar()***, ***fputc()*** itp.

### Odczyt i zapis plików binarnych

Do zapisu oraz odczytu z dysku plików binarnych stosuje się odpowiednio instrukcję ***fread()*** oraz ***fwrite()***.

#### Zapis do pliku binarnego
Aby zapisać do pliku binarnego, należy użyć funkcji ***fwrite()***. Funkcje przyjmują cztery argumenty:

```c
fwrite(addressData, sizeData, numbersData, pointerToFile);
```

- addressData - adres danych, które mają zostać zapisane na dysku,
- sizeData - rozmiar pojedynczego elementu danych, które mają być zapisane na dysku,
- numbersData - liczbę elementów, które mają zostać zapisane na dysku,
- pointerToFile - wskaźnik do pliku, w którym chcemy dokonać zapisu.

##### Przykład 3: zapis pliku binarnego

Ten program tworzy nowy plik o nazwie *plik.bin* na dysku w katalogu w którym został uruchomiony program.

```c
#include <stdio.h>
#include <stdlib.h>

struct threeNum
{
   int n1, n2, n3;
};

int main()
{
   int i;
   struct threeNum num;
   FILE *fptr;

   if ((fptr = fopen("plik.bin", "wb")) == NULL){
       printf("Błąd otwarcia pliku!");

       // plik istnieje jeśli zwracana wartość jest różna od NULL
       exit(1);
   }

   for(i = 1; i < 5; i++)
   {
      num.n1 = i;
      num.n2 = 5 * i;
      num.n3 = 5 * i + 1;
      fwrite(&num, sizeof(struct threeNum), 1, fptr); 
   }
   fclose(fptr); 
  
   return 0;
}
```

Deklarujemy strukturę ***trzyNum*** zawierającą trzy liczby - ***n1***, ***n2*** oraz ***n3***, a następnie definiujemy ją w funkcji *main* jako ***num***.

Teraz wewnątrz pętli **for** zapisujemy wartość do pliku za pomocą funkcji ***fwrite()***.

Pierwszy parametr przyjmuje adres ***num***, a drugi rozmiar struktury ***trzyNum***.

Ponieważ wstawiamy tylko jedną instancję ***num***, trzeci parametr wynosi 1. Ostatni parametr *fptr* wskazuje na plik, w którym przechowujemy dane.

Na koniec zamykamy plik.

#### Odczyt pliku binarnego

Do odczytu zawartości pliku binarnego należy użyć funkcji ***fread()***. Funkcja ta przyjmuje analogiczne parametry jak wcześniej opisywana funkcja ***fwrite()***:

- addressData - adres danych, które mają zostać zapisane na dysku,
- sizeData - rozmiar pojedynczego elementu danych, które mają być zapisane na dysku,
- numbersData - liczbę elementów, które mają zostać zapisane na dysku,
- pointerToFile - wskaźnik do pliku, w którym chcemy dokonać zapisu.

##### Przykład 4: odczyt dany z pliku binarnego

Poniższy program wczytuje dane z pliku plik.bin i wyświetla je na ekranie.

```c
#include <stdlib.h>

struct threeNum
{
   int n1, n2, n3;
};

int main()
{
   int i;
   struct threeNum num;
   FILE *fptr;

   if ((fptr = fopen("plik.bin","rb")) == NULL){
       printf("Błąd otwarcia pliku!");

       // plik istnieje jeśli zwracana wartość jest różna od NULL
       exit(1);
   }

   for(i = 1; i < 5; i++)
   {
      fread(&num, sizeof(struct threeNum), 1, fptr); 
      printf("n1: %d\tn2: %d\tn3: %d\n", num.n1, num.n2, num.n3);
   }
   fclose(fptr); 
  
   return 0;
}
```

W uproszczeniu, czytasz jeden rekord o rozmiarze threeNum z pliku wskazywanego przez *fptr do struktury num.

Po uruchomieniu tego programu otrzymasz te same rekordy, które zostały wstawione w przykładzie 3.

### Pobieranie danych z wybranego miejsca pliku

Jeśli masz wiele rekordów wewnątrz pliku i potrzebujesz dostępu do rekordu w określonej pozycji, należy pominąć wszystkie rekordy przed nim, aby znaleźć się w tej określonej pozycji.

Do pominięcia określonej porcji danych można użyć funkcji ***fseek()***.

#### Składnia fseek

```c
fseek(FILE *fptr, long int offset, int whence);
```

Pierwszy parametr *fptr jest wskaźnikiem do pliku. Drugi parametr to pozycja rekordu, który ma zostać odnaleziony, a trzeci parametr określa miejsce, w którym rozpoczyna się offset. Parametr whence może przyjąć jedną z trzech wartości:

- SEEK_SET - rozpoczyna przesunięcie od początku pliku,
- SEEK_END - rozpoczyna przesunięcie od końca pliku,
- SEEK_CUR - rozpoczyna przesunięcie od aktualnego położenia kursora w pliku.

#### Użycie fseek

Ten program zacznie czytać rekordy z pliku plik.bin w odwrotnej kolejności (od ostatniego do pierwszego), a następnie wypisze je na ekranie.

```c
#include <stdio.h>
#include <stdlib.h>

struct threeNum
{
   int n1, n2, n3;
};

int main()
{
   int i;
   struct threeNum num;
   FILE *fptr;

   if ((fptr = fopen("plik.bin","rb")) == NULL){
       printf("Błąd otwarcia pliku!");

       // plik istnieje jeśli zwracana wartość jest różna od NULL
       exit(1);
   }
   
   // przesuń kursor na koniec pliku
   fseek(fptr, -sizeof(struct threeNum), SEEK_END);

   for(i = 1; i < 5; i++)
   {
      fread(&num, sizeof(struct threeNum), 1, fptr); 
      printf("n1: %d\tn2: %d\tn3: %d\n", num.n1, num.n2, num.n3);
      fseek(fptr, -2 * sizeof(struct threeNum), SEEK_CUR);
   }
   fclose(fptr); 
  
   return 0;
}
```

Funkcja ***fseek()*** może być używana zarówno podczas odczytu jak i zapisu danych w pliku.
