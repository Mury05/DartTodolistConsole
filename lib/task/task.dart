// Classe pour le type de données Todo
class Task {
  int? id;
  static int idCounter = 0;
  String description;
  bool statut =false;

  Task(this.description) {
    idCounter++;
    id = idCounter;
  }
}