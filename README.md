[![Maintainability](https://api.codeclimate.com/v1/badges/049f000545af06e0ea70/maintainability)](https://codeclimate.com/github/orevenat/controllers-workshop/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/049f000545af06e0ea70/test_coverage)](https://codeclimate.com/github/orevenat/controllers-workshop/test_coverage)
![Ruby](https://github.com/orevenat/controllers-workshop/workflows/Ruby/badge.svg)

# Задание для практики

- Haml + simple form
- Никакого дизайна
- Покрываем success path тестами
- В идеале браузер вообще не открываем
- Аутентификацию и авторизацию не делаем (захардкодить current_user просто)

## 1 Level

1. Юзер может добавить заметку
2. Юзер может видеть список своих заметок
3. Юзер может видеть список всех заметок
4. Юзер может комментировать заметки
5. Юзер может апвоутить/даунвоутить чужие заметки и комментарии (сколько угодно раз)

## 2 Level

1. Модератор может удалять заметки
2. Модератор может опубликовать (ч/з сторонний сервис dopo.st). К заметке добавляется внешняя ссылка
3. Отдельная страница-"витрина" где видны только опубликованные ссылки
