__ PROJET API - MODULE ARCHITECTURE LOGICIELLE __


** INSTALLATION DU PROJET **

git clone https://github.com/lauhus/projet-archi_js.git

importation de la base de données via le fichier /documentation_bdd/projet-banque(1).sql

npm install
(installation dépandence et packages)

Mise à jour des identifiants Mysql via le fichier config/db.config

** LANCER LE SERVEUR **

npm start 

** LANCER LES TESTS **

npm test

** TEST SUR POSTMAN **

endPoint : 

    GET http://localhost:8000/api/customer/ + id
    POST http://localhost:8000/api/customer
    PUT http://localhost:8000/api/customer/ + id

    GET http://localhost:8000/api/account/ + id
    POST http://localhost:8000/api/account
    PUT http://localhost:8000/api/account/ + id