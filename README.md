
# Evaluation Flutter 

"Brève" évaluation flutter dans le cadre d'études



## But de l'évaluation

- Faire une page de connection
- Faire une page d'inscription
- Faire une page d'accueil qui affiche les données Firestore
- Mettre en place la déconnexion

Il fallait aussi mettre en place un cheminement utilisateur logique (redirection après connexion, redirection après déconnection, etc..)

### Bonus Personnel 
- Possibilités de créer un document Firestore en étant connecté
- Possibilités de supprimer un document Firestore en étant connecté




## Installation et Test

Afin de tester le projet
- Créer un nouveau dossier

```bash
  mkdir test_flutter

  cd test_flutter
```


- Cloner le projet

```bash
git clone https://github.com/MaxenceCodeFR/Evaluation_Flutter.git

cd Evaluation_Flutter
```

- ⚠️ Attention à bien séléctionner le SDK Flutter sinon vous ne pouvez pas lancer l'application sur main.dart ⚠️
  
- Installer les dépendances nécessaires

```bash
flutter pub get
```

- Lancer le projet
```bash
flutter run
```

## Wireframe 

![image](https://github.com/MaxenceCodeFR/Evaluation_Flutter/assets/105151136/9604a39d-a25d-41c0-9294-e7946d7b27c2)

    
## Références Couleurs

| Color             | Hex                                                                |
| ----------------- | ------------------------------------------------------------------ |
| orangeAccent | ![#FFAB40](https://via.placeholder.com/20/ffab40?text=+)  |
| orange | ![#FF9800](https://via.placeholder.com/20/ff9800?text=+)  |
| orangeDeep | ![#FF5722](https://via.placeholder.com/20/ff5722?text=+) |
| bone white | ![#FF5F5D](https://via.placeholder.com/20/f5f5dc?text=+) |
| grey[850] | ![#5E5E5D](https://via.placeholder.com/20/5e5e5dc?text=+) |

## Documentation

Afin de tester au mieux je vous invite a créer un utilisateur sans utiliser vos mots de passe habituels.
Si vous ne pouvez ou ne voulez pas créer un utilisateur, vous pouvez utiliser :

```
id: test@gmail.com
```
```
mdp: azerty
```

## Problèmes Connus

- Obligation de séléctionner un ID (potentiellement non-unique) lors de la création d'un document
- Tout les membres connectés peuvent supprimer les livres des autres utilisateurs
- Et surement d'autres

## Auteur

- [@MaxenceCodeFR](https://www.github.com/MaxenceCodeFR)

### EDIT
EDIT: Je me suis rendu compte aujourd'hui (22/04/2024) que je lançais l'appli via Chrome et que par extension ce n'est pas une appli mobile ...
