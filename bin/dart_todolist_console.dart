import 'dart:io';

import 'package:dart_todolist_console/dart_todolist_console.dart'
    as dart_todolist_console;

void main(List<String> arguments) {
  dart_todolist_console.TodoList todoList = dart_todolist_console.TodoList();

  //  Ajout de quelques tâches
  // todoList.addTask("Acheter du pain");
  // todoList.addTask("Acheter du lait");
  // todoList.addTask("Acheter du beurre");

  // Scanner pour lire les entrées de l'utilisateur
  int? choix;
  do {
    print("Bienvenue dans votre application de gestion de tâches !");
    print("Que voulez-vous faire ?");
    print("1 - Ajouter une tâche");
    print("2 - Supprimer une tâche");
    print("3 - Afficher la liste des tâches");
    print("4 - Changer le statut d'une tâche");
    print("5 - Modifier une tâche");
    print("6 - Suppriner les tâches");
    print("7 - Quitter");
    print("Entrez votre choix : ");

    choix = int.parse(stdin.readLineSync()!);

    switch (choix) {
      case 1:
        print("Entrez la description de la tâche : ");
        String description = stdin.readLineSync()!;
        todoList.addTask(description);
        break;
      case 2:
        print("Entrez l'identifiant de la tâche à supprimer : ");
        int id = int.parse(stdin.readLineSync()!);
        todoList.deleteTask(id);
        break;
      case 3:
        print("Liste des tâches : ");
        todoList.showAllTasks();
        break;
      case 4:
        print("Entrez l'identifiant de la tâche à modifier : ");
        int id = int.parse(stdin.readLineSync()!);
        todoList.checkStatut(id);
        break;
      case 5:
        print("Entrez l'identifiant de la tâche à modifier : ");
        int id = int.parse(stdin.readLineSync()!);
        print("Entrez la nouvelle description de la tâche : ");
        String description = stdin.readLineSync()!;
        todoList.editTask(id, description);
        break;
      case 6:
        print("Suppression de toutes les tâches...");
        todoList.deleteAllTask();
      case 7:
        print("Merci d'avoir utilisé notre application !");
        break;
      default:
        print("Choix invalide !");
    }
  } while (choix != 7);
}
