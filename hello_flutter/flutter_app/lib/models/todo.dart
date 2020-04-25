class Todo {
  int _id;
  String _title;
  String _description;
  String _date;
  String _priority;

  // * creating constructor for the class Todo
  Todo(this._title, this._priority, this._date, [this._description]);
  Todo.withId(this._id, this._title, this._priority, this._date,
      [this._description]);

// * creating the getters for our class
  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  String get priority => _priority;

// * creating  setter for our class

// checking if the lenght of the title to be less than 255
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      _title = newTitle;
    }
  }

// checking if the lenght of the Description to be less than 255

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      _description = newDescription;
    }
  }


// checking if pririties have lenght of greater than 0 and 
// less or equal to three.

  set priority(int newPriority){
    if (newPriority >0 && newPriority <= 3){
      priority = newPriority;
    }
  }
}
