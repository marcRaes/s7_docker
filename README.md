# Symfony 7.1 Docker Project

Ce projet fournit une configuration Docker pour exécuter une application Symfony 7.1. Il inclut les services nécessaires pour développer et tester une application Symfony de manière locale.

## Prérequis

- [Docker](https://www.docker.com/) et [Docker Compose](https://docs.docker.com/compose/) installés
- Un environnement configuré pour Symfony

## Services inclus

- **PHP 8.x** : Pour exécuter l'application Symfony.
- **Nginx** : Serveur web pour l'application Symfony.
- **MySQL** : Base de données relationnelle pour stocker les données de l'application.
- **phpMyAdmin** : Interface web pour gérer la base de données MySQL.
- **Mailpit** : Outil de capture d'e-mails pour les tests.

## Installation

1. Clonez le dépôt :

   ```bash
   git clone https://github.com/marcRaes/s7_docker.git
   cd s7_docker
   ```

2. Copiez le fichier `.env.dist` vers `.env` :

   ```bash
   cp .env.dist .env
   ```

   Modifiez le fichier `.env` si nécessaire pour configurer les paramètres spécifiques à votre environnement.

3. Démarrez les conteneurs Docker :

   ```bash
   docker-compose up -d
   ```

4. Accédez à l'application Symfony via :

   ```
   http://localhost
   ```

5. phpMyAdmin est accessible via :

   ```
   http://localhost:8080
   ```
   
   Utilisez les identifiants configurés dans le fichier `.env`. Par défaut :
   - **Utilisateur** : `user`
   - **Mot de passe** : `password`

6. Mailpit est accessible via :

   ```
   http://localhost:8025
   ```

7. Modification des identifiants par défaut :

   Pour des raisons de sécurité, modifiez les variables d'environnement présentes dans le fichier `.env` selon vos besoins :
   ```
   MYSQL_DATABASE=s7-docker
   MYSQL_USER=user
   MYSQL_PASSWORD=password
   NGINX_PORT=8080
   PHPMYADMIN_PORT=8081
   MYSQL_ROOT_PASSWORD=root
   ```

## Commandes utiles

- **Vérifier les logs des conteneurs** :
  ```bash
  docker-compose logs
  ```

- **Redémarrer les conteneurs** :
  ```bash
  docker-compose restart
  ```

- **Arrêter les conteneurs** :
  ```bash
  docker-compose down
  ```

- **Accéder à un conteneur PHP** :
  ```bash
  docker exec -it s7_php bash
  ```

## Structure du projet

- `docker/` : Contient les fichiers de configuration Docker pour chaque service.
- `src/` : Code source de l'application Symfony.
- `.env` : Fichier d'environnement pour configurer les services Docker et Symfony.
- `docker-compose.yml` : Configuration principale pour orchestrer les conteneurs Docker.

## Notes supplémentaires

- Assurez-vous que le port 80 est libre sur votre machine pour accéder à l'application.
- Vous pouvez ajouter des extensions PHP supplémentaires en modifiant le fichier `Dockerfile` correspondant.
- Si des problèmes surviennent, vérifiez les fichiers de log ou contactez le mainteneur du projet.

## Contribution

Les contributions sont les bienvenues ! Veuillez ouvrir une issue ou une pull request si vous avez des idées ou des corrections à proposer.

## Licence

Ce projet est sous licence [MIT](LICENSE).

---

### Auteur

Projet maintenu par [Marc Raes](https://github.com/marcRaes).

