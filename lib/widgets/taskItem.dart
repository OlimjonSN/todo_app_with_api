import 'package:flutter/material.dart';
import 'package:todo_app_with_api/constants.dart';
import 'package:todo_app_with_api/screens/tasks_screen.dart';

class taskItem extends StatelessWidget {
  int index;
  Icon icon;
  String title;
  int taskNumber;
  taskItem({
    required this.index,
    required this.icon,
    required this.title,
    required this.taskNumber,
  });

  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Tasks(index: index)));
        },
        child: Container(
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(0, 0), // Shadow position
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              const SizedBox(height: 30),
              Text(title, style: titleStyle),
              Text(
                '$taskNumber Tasks',
                style: tasksStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
