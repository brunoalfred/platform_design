// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:help/models/tasks.dart';
import 'package:help/widgets/task_list.dart';

void main() {

  testWidgets('My widget Has a List of Tasks',  (WidgetTester tester  ) async {

    List<Task> task = ['cook', 'eat'];

    // ignore: non_constant_identifier_names
    final ListViewWidget = TaskList(tasks: task);

    await tester.pumpWidget(Container(child: ListViewWidget,));

    expect(find.byWidget(ListViewWidget), findsOneWidget);
  });
}