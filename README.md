# Unit tests in C (variants)


## Description
Variations unit tests in C (for GCC).

В статье [Авто-регистрация тестов на С средствами языка (Habrahabr)](http://habrahabr.ru/post/252439/) можно видеть как автор взял за основу [seatest](https://code.google.com/p/seatest/):

> Изначально для написания тестов использовался [seatest](https://code.google.com/p/seatest/), в котором устраивало практически всё, но недоставало авто-регистрации. 
> По результатам вышеописанной деятельности на основе seatest был сделан [stic](https://github.com/xaizek/stic) 
> (там используется немного C99, но это не является обязательным в общем случае), добавляющий недостающее с точки зрения автора. 
> Именно там можно посмотреть опущенные здесь детали реализации, а именно в заголовочном файле [stic.h](https://github.com/xaizek/stic/blob/master/src/stic.h). 

Ну да средства языка и все такое. Но список с номерами функций и переменных для каждой возможной строки кода - это же ппц. А что если можно использовать еще и средства компилятора (GCC)

### Различные варианты тестов в Си:

##### Вариант 1 (классический массив функций) [1_classic](./1_classic/)

**Достоинства:**

1. Просто и понятно.
2. Кроссплатформенность.

**Недостатки:**

1. Много кода.
2. Нет авторегистрации (сами добавляем функции в массив).
3. Сложность работы в многофайловых проектах.




***
<br/>
##### Вариант 2 (ld script) [2_ld_script](./2_ld_script/)

**Достоинства:**

1. Получаем авторегистрацию (просто складываем указатели на тест функции в одну секцию).
2. Легко работать в многофайловых проектах.

**Недостатки:**

1. Работа с ld скриптами (фу фу фу).
2. Нет Вы не поняли. ЭТО РАБОТА с ld скриптами. (сложность при кросс-компиляции).
3. Сложновато как-то.


Для получения ld скрипта можно выполнить следующую команду:
```console
ld -verbose

```


Или через GCC:
```console
gcc -m32 -Xlinker -verbose

```


***
<br/>
##### Вариант 3 (использование \_\_attribute\_\_((section ("unit_test"))))  [3_section](./3_section/)

**Достоинства:**

1. Получаем авторегистрацию (просто складываем указатели на тест функции в одну секцию).
2. Легко работать в многофайловых проектах.
3. Нет работы с ld скриптами (но смысл остался прежним, просто есть волшебная секция).

**Недостатки:**

1. Нужна поддержка \_\_attribute\_\_((section ("section_name")))).



***
<br/>
##### Вариант 4 (использование \_\_attribute\_\_((constructor)  [4_constructor](./4_constructor/)

**Достоинства:**

1. Получаем авторегистрацию (всю работу делает сам GCC).
2. Легко работать в многофайловых проектах.
3. Нет работы с ld скриптами.
4. Самый минимальный объем кода.

**Недостатки:**

1. Нужна поддержка \_\_attribute\_\_((constructor).



<br/>
***
<br/>
## License

[BSD](./LICENSE).
