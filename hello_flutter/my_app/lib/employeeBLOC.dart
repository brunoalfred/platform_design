//TODO: imports
import 'dart:async';
import './employee.dart';


// TODO: List of employees

class EmployeeBloc {

  // sink to add data in pipe
  // stream to get data from the pipe
  // by pipe, means data flow

  List<Employee> _employeeList = [
    Employee(1, "employee_one", 10000.0),
    Employee(2, "employee_two", 20000.0),
    Employee(3, "employee_three", 30000.0),
    Employee(4, "employee_four", 40000.0),
    Employee(5, "employee_five", 50000.0)
  ];
}
// TODO: Stream Controllers

final _employeeListStreamController = StreamController<List<Employee>>();

  // for inc and dec

final _employeeSalaryIncrementStreamController = StreamController<Employee>();
final _employeeSalaryDecrementStreamController = StreamController<Employee>();


// TODO: Stream Sink getter

Stream<List<Employee>> get employeeListStream => _employeeListStreamController.stream;

StreamSink <List<Employee>> get employeeListSink => _employeeListStreamController.sink;

StreamSink<Employee> get employeeSalaryIncrement => _employeeSalaryIncrementStreamController.sink;

StreamSink<Employee> get employeeSalaryDecrement => _employeeSalaryDecrementStreamController.sink;


// TODO: Core functions




// TODO: Constructor - add data; listen to changes



// TODO: dispose