# School domino Pascal

This repository contains one of my early larger programs, written in Pascal as a school project.

The program implements a console domino game and renders domino tiles with simple ASCII graphics. The source is preserved mostly as a historical snapshot of an early programming project rather than as a modern game implementation.

It has no external dependencies beyond a Pascal compiler and can still be built with Free Pascal on a current Linux system.

## Описание

Этот репозиторий содержит одну из моих ранних достаточно крупных программ, написанную на Pascal как школьный проект.

Программа реализует консольную игру в домино и рисует костяшки простой ASCII графикой. Исходники сохранены в основном как исторический снимок раннего программного проекта, а не как современная реализация игры.

Внешних зависимостей, кроме компилятора Pascal, нет. Проект по-прежнему можно собрать с помощью Free Pascal в современной системе Linux.

## Сборка и запуск

```sh
fpc domino.pas
./domino
```

Пример сборки и вывода:

```console
karen@Home:~/pascal$ fpc domino.pas
Free Pascal Compiler version 3.2.2+dfsg-32 [2024/01/05] for x86_64
Compiling domino.pas
Linking domino
514 lines compiled, 0.0 sec
karen@Home:~/pascal$ ./domino
   |. . . .|. . . .|. .    |. .    |. .    |.      |
 . |       |       | .   . |. .    |       |     . | .
   |. . . .|. . . .|. .    |. .    |. .    |  .    |
```

## О проекте

Весь код находится в одном `domino.pas`. В нем реализованы генерация и раскладка костей, игровая логика и текстовое отображение домино непосредственно в терминале.

Проект оставлен в исходном виде как ранняя работа и пример того, с чего начиналось программирование до более поздних C/C++/networking проектов.
