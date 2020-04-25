class Todo {
  int _id;
  String _title;
  String _description;
  String _date;
  String _priority;


  // * creating constructor for the class Todo
  Todo(this._title, this._priority, this._date, [this._description]);
  Todo.withId(this._id, this._title, this._priority, this._date, [this._description]);

// * creating the getters for our class
   int get id => _id;
   String get title => _title;
   String get description => _description;
   String get date => _date;
   String get priority => _priority;


}