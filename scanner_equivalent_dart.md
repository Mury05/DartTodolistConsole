# 📌 Équivalent de `Scanner` (Java) en Dart

En Dart, l'équivalent de `Scanner` en Java pour lire les entrées utilisateur depuis la console est `stdin.readLineSync()` du package `dart:io`.

## 🚀 1. Lire une entrée utilisateur (String)
```dart
import 'dart:io';

void main() {
  stdout.write("Entrez votre nom : ");
  String? nom = stdin.readLineSync(); // Lecture de l'entrée utilisateur
  print("Bonjour, \$nom !");
}
```
📌 **Explication** :  
- `stdout.write()` : Affiche un message sans saut de ligne.  
- `stdin.readLineSync()` : Lit l'entrée utilisateur sous forme de `String?` (nullable).  

---

## 🧮 2. Lire un nombre entier
```dart
import 'dart:io';

void main() {
  stdout.write("Entrez un nombre : ");
  int? nombre = int.tryParse(stdin.readLineSync() ?? '');
  
  if (nombre != null) {
    print("Le double de \$nombre est \${nombre * 2}");
  } else {
    print("Veuillez entrer un nombre valide.");
  }
}
```
📌 **Explication** :  
- `stdin.readLineSync()` retourne `null` si l'entrée est vide.  
- `int.tryParse()` permet de convertir la chaîne en `int` sans erreur.

---

## 🔄 Différence entre Java et Dart

| Java (`Scanner`) | Dart (`stdin.readLineSync()`) |
|------------------|-----------------------------|
| `Scanner scanner = new Scanner(System.in);` | Importation automatique avec `dart:io` |
| `scanner.nextLine();` pour une chaîne | `stdin.readLineSync();` |
| `scanner.nextInt();` pour un entier | `int.tryParse(stdin.readLineSync() ?? '')` |
| Nécessite `import java.util.Scanner;` | Nécessite `import 'dart:io';` |

⚡ **En résumé** : Dart utilise `stdin.readLineSync()` pour la lecture console, mais il faut convertir manuellement les valeurs (`int.tryParse()` pour les nombres). 🚀

