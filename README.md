# Dockerized Python 3.8 web project with Django 4.1.5

Les fichiers de configuration (_compose.yaml et Dockerfile_) ainsi que les scripts de ce dépôt, visent à faciliter la conteneurisation d'un petit projet web avec le framework Django.

## Prérequis
- Docker (_daemon ou desktop_)
- Bourn Again SHell (_bash_)
- Git
- VSCode (_avec les extensions_)
    - Pylance
    - Python
    - Python Debugger

## Mode d'emploi
- Créez le dossier qui contiendra votre projet ou clônez ce dépot
- Copiez les fichiers de ce dépot dans votre dossier projet ou positionnez vous dans le dossier que vous venez de clôner
- Vérifiez que Docker est bien en cours d'exécution : ```docker ps```
- Exécutez le premier script : ```./first_script.sh```
- Exécutez le deuxième script : ```./second_script.sh```
- **Commencez à développer sur VSCode**

## Vérification du fonctionnement du serveur Web
- ```localhost:8080```

## Arrêt et destruction du container
- Ouvrez une console ou terminal sur VSCode
- Positionnez vous à la racine de votre projet
- Exécutez la commande : ```docker compose down```

## Structure du projet avant exécution des scripts :

docker_python<br>
├── compose.yaml<br>
├── Dockerfile<br>
├── first_script.sh<br>
├── README.md<br>
└── second_script.sh

## Structure du projet après éxécution des cripts

docker_python<br>
├── app<br>
│   ├── db.sqlite3<br>
│   ├── manage.py<br>
│   └── web<br>
│       ├── asgi.py<br>
│       ├── __init__.py<br>
│       ├── __pycache__<br>
│       │   ├── __init__.cpython-38.pyc<br>
│       │   ├── settings.cpython-38.pyc<br>
│       │   ├── urls.cpython-38.pyc<br>
│       │   └── wsgi.cpython-38.pyc<br>
│       ├── settings.py<br>
│       ├── urls.py<br>
│       └── wsgi.py<br>
├── compose.yaml<br>
├── Dockerfile<br>
├── first_script.sh<br>
├── README.md<br>
└── second_script.sh<br>

J'espère que ce petit projet pourra vous rendre service
