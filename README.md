# School domino Pascal

An early Pascal programming project implementing a console domino game. The repository
preserves the original program as a historical school project.

## Описание

Одна из ранних учебных программ автора на Pascal - консольная игра в домино, сохранённая в
репозитории как школьный проект.

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
