---
layout: post
toc: true
description: >
    Konfiguracja - czyli co i jak ustawiać żeby praca z Git była wygodniejsza. Krótkie wprowadzenie do podstawowych parametrów konfiguracyjnych.
#Git posiada długą listę parametrów konfiguracyjnych pozwalających dostosować do swoich potrzeb środowisko pracy, a ten opis zawiera podstawowe parametry konfiguracyjne.
hide_description: true
title: GIT&#58; Szybka Konfiguracja
categories: [git] 
tags: [git]
languages:
- pl
img: cover/git-unsplash.jpg
ximg: tmb/git-unsplash_x.jpg
author: rroszczyk
comments: false
#Photo by <a href="https://unsplash.com/@synkevych?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Roman Synkevych</a> on <a href="https://unsplash.com/s/photos/git?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
#[GIT - przewodnik praktyczny]  
---

Git posiada długą listę parametrów konfiguracyjnych pozwalających dostosować do swoich potrzeb środowisko pracy oraz zdefiniować informacje o użytkowniku (autorze) wprowadzanych zmian. Wszystkie ustawienia można ustawić ręcznie w&nbsp;pliku _.gitconfig_ w&nbsp;katalogu domowym zalogowanego użytkownika bądź poprzez wykonanie odpowiednich komend.
{:.text-justify}

<!--more-->

## Ustawienie parametrów dla użytkownika

Pierwszą rzeczą, którą powinno się ustawić w każdej nowej instalacji Git, jest nazwa użytkownika. Git rejestruje tę informacje wraz ze wszystkimi zmianami wprowadzanymi do repozytorium kodu. Dodatkowo informacja ta jest wykorzystywana przez usługi innych firm, np.: GitHub. Najczęściej jako nazwę użytkownika wprowadza się imię i nazwisko autora bądź login dzięki czemu łatwo jest identyfikować zmiany wprowadzone zmiany we współdzielonym repozytorium. Wartości parametrów warto umieszczać w cudzysłowach, szczególnie jeśli zawierają spacje.
{:.text-justify}

Dla ukrycia swojego adresu mailowego przez innymi użytkownikami współdzielonych repozytoriów github warto posłużyć się specjalnym adresem mail w postaci nazwa_użytkownka@users.noreply.github.com. Przykład został zamieszczony poniżej.
{:.text-justify}

```bash
git config --global user.name "Radosław Roszczyk"
git config --global user.email "rroszczyk@users.noreply.github.com"
```

Dodanie parametru _--global_ powoduje zapamiętanie wprowadzonych danych we wcześniej wspomnianym pliku konfiguracyjnym _.gitconfig_, dzięki czemu parametry te stają się parametrami domyślnymi dla wszystkich nowych repozytoriów. Pominięcie parametru powoduje ustawienie parametrów tylko dla lokalnego repozytorium co jest równoznaczne użyciu parametru _--local_. Lokalna konfiguracja zostaje zapisana w pliku _.git/config_ repozytorium i będzie nadrzędna w stosunku do konfiguracji globalnej, ale działa tylko w zakresie repozytorium dla którego została zapisana.
{:.text-justify}

## Ustawianie domyślnego edytora

Domyślnym edytorem dla Git'a jest VIM. Do zmiany edytora ponownie posłużymy się przełącznikiem _config_, ale tym razem zmienimy parametr konfiguracyjny _core.editor_. Poniższy przykład zmienia domyślny edytor na nano:
{:.text-justify}

```bash
git config --global core.editor nano
```

## Modyfikacja konfiguracji

Jeżeli zajdzie potrzeba zmiany dowolnego z&nbsp;parametrów wystarczy dokonać jego nadpisania poprzez ponowne ustawienie parametru z nową wartością. W&nbsp;przypadku gdy zależy nam na usunięciu któregoś z&nbsp;parametrów należy posłużyć się przełącznikiem _--unset_. W&nbsp;poniższym przykładzie usunięta zostanie nazwa użytkownika z&nbsp;konfiguracji lokalnego repozytorium.
{:.text-justify}

```bash
git config --local --unset user.name
```

## Sprawdzanie konfiguracji

Poszczególne parametry konfiguracji można odczytać wykonując polecenie:
{:.text-justify}

```bash
git config user.name
git config user.email
```

Analogicznie jak przy ustawianiu pominięcie parametru _--global_ zwraca konfigurację lokalnego repozytorium. Jeśli chcemy odczytać konfigurację globalną należy posłużyć się parametrem:
{:.text-justify}

```bash
git config --global user.name
```

Oprócz pojedynczych parametrów możemy odczytać pełną konfigurację. Do tego celu służy przełącznik _--list_ i ponownie w połączeniu z _--global_ zwróci konfigurację globalną, natomiast bez parametru otrzymamy ustawienia lokalnego repozytorium:
{:.text-justify}

```bash
git config --global --list
```
