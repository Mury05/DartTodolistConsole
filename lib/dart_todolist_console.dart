// Mise en place de TodolistConsole avec Dart

import 'package:dart_todolist_console/task/task.dart';

class TodoList {
  List<Task> tasksList = [];

  // Fonction pour récupérer la liste des todos
  List<Task> getTasksList() {
    return tasksList;
  }

  // Fonction pour ajouter un todo
  void addTask(String description) {
    if (description.isNotEmpty) {
      Task newTask = new Task(description);
      tasksList.add(newTask);
      print("Tâche ajoutée avec succès !");
    } else {
      print("La description de la tâche ne peut pas être vide !");
    }
  }

  // Fonction pour supprimer un todo
  void deleteTask(int id) {
    Task? checkTask;
    int removedId = -1;
    for (Task task in tasksList) {
      if (task.id == id) {
        checkTask = task;
        removedId = tasksList.indexOf(task);
        break;
      }
    }

    if (checkTask != null && removedId != -1) {
      tasksList.removeAt(removedId);
      print("Tâche supprimée avec succès !");
    } else {
      print("Aucune tâche trouvée avec cet identifiant !");
    }
  }

  // Fonction pour changer le statut d'une tâche
  void checkStatut(int id) {
    Task? checkTask;
    for (Task task in tasksList) {
      if (task.id == id) {
        checkTask = task;
        break;
      }
    }

    if (checkTask != null) {
      checkTask.statut = !checkTask.statut;
      print("Statut de la tâche modifié avec succès !");
    } else {
      print("Aucune tâche trouvée avec cet identifiant !");
    }
  }

  // Fonction pour modifier une tâche
  void editTask(int id, String newDescription) {
    Task? checkTask;
    for (Task task in tasksList) {
      if (task.id == id) {
        checkTask = task;
        break;
      }
    }

    if (checkTask != null) {
      checkTask.description = newDescription;
      print("Tâche modifiée avec succès !");
    } else {
      print("Aucune tâche trouvée avec cet identifiant !");
    }
  }

  // Fonction pour afficher une tâche spécifique
  void showTask(int id) {
    Task? checkTask;
    for (Task task in tasksList) {
      if (task.id == id) {
        checkTask = task;
        break;
      }
    }

    if (checkTask != null) {
      print(
          "Tâche n°${checkTask.id} : ${checkTask.description} - Statut : ${checkTask.statut ? "Terminée" : "En cours"} ");
    } else {
      print("Aucune tâche trouvée avec cet identifiant !");
    }
  }

  // Fonction pour afficher toutes les tâches
  void showAllTasks() {
    if (tasksList.isNotEmpty) {
      for (Task task in tasksList) {
        print(
            "Tâche n°${task.id} : ${task.description} - Statut : ${task.statut ? "Terminée" : "En cours"} ");
      }
    } else {
      print("Aucune tâche trouvée !");
    }
  }
}
