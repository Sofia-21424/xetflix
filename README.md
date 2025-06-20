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

 
my-project/
├── README.md
├── app
│   ├── Dockerfile
│   ├── filters.php
│   ├── home.php
│   ├── login.php
│   ├── posters
│   │   ├── antman.jpg
│   │   ├── arcane.jpg
│   │   ├── avengersageofultron.jpg
│   │   ├── avengersinfinitywar.jpg
│   │   ├── batman.jpg
│   │   ├── blackwidow.jpg
│   │   ├── dolittle.jpg
│   │   ├── familyguy.jpg
│   │   ├── ironman.jpg
│   │   ├── rickandmorty.jpg
│   │   ├── scottpilgrimvstheworld.jpg
│   │   ├── spider-manhomecoming.jpg
│   │   ├── theavengers.jpg
│   │   ├── thecrowdedroom.jpg
│   │   └── zodiac.jpg
│   ├── purpleAndPink.jpg
│   ├── register.php
│   ├── searchResult.php
│   ├── style.css
│   ├── videoPage.php
│   ├── videos
│   │   ├── antman.mp4
│   │   ├── arcane.mp4
│   │   ├── avengersageofultron.mp4
│   │   ├── avengersinfinitywar.mp4
│   │   ├── blackwidow.mp4
│   │   ├── dolittle.mp4
│   │   ├── ironman.mp4
│   │   ├── rickandmorty.mp4
│   │   ├── scottpilgrimvstheworld.mp4
│   │   ├── spider-manhomecoming.mp4
│   │   ├── theavengers.mp4
│   │   ├── thecrowdedroom.mp4
│   │   └── zodiac.mp4
│   └── xetflix_logo.png
├── db
│   └── Dockerfile
└── docker-compose.yml

##Как работи всеки от компонентите?

php файлове - страниците на самия сайт
css фаил - оформление за страниците
jpg файлове - снимки - лого, фон, постери за филмите
mp4 файлове - видеата за филмите и сериалите
app / dockerfile - dockerfile за самия проект
db / dockerfile - dockerfile за базата данни
docker-compose.yml - осъществява връзка между dokerfile-овете

##Как е осъществена комуникацията между услугите?

чрез docker-compose.yml

