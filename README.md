Подгответе кратка документация, в която е описано:
Как се изграждат и стартират контейнерите.
Каква е структурата на проекта.
Как работи всеки от компонентите.
Как е осъществена комуникацията между услугите.


#проект видео платфома Xetflix

## как се изграйдат и стартират контейнерите?

   1 изтеглете репозиторията
   2 написхете в терминала
      cd my-project (или къдедо сте слойили репозитория и както сте я именужали)
      docker-compose up --build

   мойете да видите сайта от браузъра чрез : localhost:8080
##Каква е структурата на проекта?


C:\project-os
│   docker-compose.yml
│   Dockerfile
│   README.md
│
├───db
│   │   xetflixdb.sql
│   │
│   └───init.sql
└───src
    │   connection.php
    │   filters.php
    │   index.php
    │   purpleAndPink.jpg
    │   searchResult.php
    │   style.css
    │   videoPage.php
    │   xetflix_logo.png
    │
    ├───posters
    │       antman.jpg
    │       arcane.jpg
    │       avengersageofultron.jpg
    │       avengersinfinitywar.jpg
    │       batman.jpg
    │       blackwidow.jpg
    │       dolittle.jpg
    │       familyguy.jpg
    │       ironman.jpg
    │       rickandmorty.jpg
    │       scottpilgrimvstheworld.jpg
    │       spider-manhomecoming.jpg
    │       theavengers.jpg
    │       thecrowdedroom.jpg
    │       zodiac.jpg
    │
    └───videos
            antman.mp4
            arcane.mp4
            avengersageofultron.mp4
            avengersinfinitywar.mp4
            blackwidow.mp4
            dolittle.mp4
            ironman.mp4
            rickandmorty.mp4
            scottpilgrimvstheworld.mp4
            spider-manhomecoming.mp4
            theavengers.mp4
            thecrowdedroom.mp4
            zodiac.mp4


##Как работи всеки от компонентите?

php файлове - страниците на самия сайт
connection.php - връзка с базата данни
css фаил - оформление за страниците
jpg файлове - снимки - лого, фон, постери за филмите
mp4 файлове - видеата за филмите и сериалите
docker-compose.yml - дефинира и свързва контейнерите
Dockerfile - докер файл за проекта
README.md - описание / документация

##Как е осъществена комуникацията между услугите?

чрез docker-compose.yml

