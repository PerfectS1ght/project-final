## [REST API](http://localhost:8080/doc)

## Концепция:

- Spring Modulith
    - [Spring Modulith: достигли ли мы зрелости модульности](https://habr.com/ru/post/701984/)
    - [Introducing Spring Modulith](https://spring.io/blog/2022/10/21/introducing-spring-modulith)
    - [Spring Modulith - Reference documentation](https://docs.spring.io/spring-modulith/docs/current-SNAPSHOT/reference/html/)

```
  url: jdbc:postgresql://localhost:5432/jira
  username: jira
  password: JiraRush
```

- Есть 2 общие таблицы, на которых не fk
    - _Reference_ - справочник. Связь делаем по _code_ (по id нельзя, тк id привязано к окружению-конкретной базе)
    - _UserBelong_ - привязка юзеров с типом (owner, lead, ...) к объекту (таска, проект, спринт, ...). FK вручную будем
      проверять

## Аналоги

- https://java-source.net/open-source/issue-trackers

## Тестирование

- https://habr.com/ru/articles/259055/

Список выполненных задач:

1. Сделал рефакторинг метода com.javarush.jira.bugtracking.attachment.FileUtil#upload чтоб он использовал
современный подход для работы с файловой системой.
2. Удалил социальные сети: vk, yandex.
3. Добавил локализацию на двух языках для шаблонов писем (mails) и стартовой страницы index.html.
4. Написал тесты для публичных методов контроллера ProfileRestController.
5. Вынес чувствительную информацию в отдельный файл.
6. Написал Dockerfile.
7. Написал docker-compose файл для запуска контейнера сервера вместе с БД и nginx.