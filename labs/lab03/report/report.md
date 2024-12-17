---
## Front matter
title: "Лабораторная работа №3"
subtitle: "Язык разметки Markdown"
author: "Пильщиков Никита Максимович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Задание

Изучить разметку Markdown и написать отчёты по лаборатоным работам.

# Выполнение лабораторной работы

Перейдём в каталог курса с помощью команды cd.Обновим локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды git pull (рис. [-@fig:001]).

![Переход в каталог курса](image/n1.png){#fig:001 width=70}

Перейдём в каталог с шаблоном для лабораторной работы №3, далее проведём компиляцию шаблона, прописав команду make. Должны создаться два файла  report.pdf и report.docx, проверим их наличие с помощью команды ls (рис. [-@fig:002]).

![Компиляция шаблона и проверка наличия необходимых файлов](image/n2.png){#fig:002 width=70%}

Файлы успешно созданы, Makefile работает правильно. Теперь удалим созданные файлы командой make clean и проверим наши действия с помощью команды ls (рис. [-@fig:003]).

![Удаление файлов](image/n3.png){#fig:003 width=70%}

Воспользовавшись текстовым редактором mcedit, я открыл файл report.md и внимательно его изучил. Отчёт по лабораторной №3 я  отправлю в ТУИС (рис. [-@fig:004]).

![Название рисунка](image/n4.png){#fig:004 width=70%}


# Задания для самостоятельной работы

Мне нужно написать отчёт по лабороторной №2 в формате Markdown и скомпилировать полученный результат. (рис. [-@fig:005]).

![Отчёт по лаобораторной №2](image/n5.png){#fig:005 width=70%}

# Выводы

Освоил  процедуры оформления отчетов с помощью легковесного языка разметки Markdow, а также научился писать отчёты в формате MarkDown


