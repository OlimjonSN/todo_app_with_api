import 'package:flutter/material.dart';
import 'package:todo_app_with_api/constants.dart';
import 'package:todo_app_with_api/model/cardTask.dart';

class Tasks extends StatefulWidget {
  static const routeName = '/tasks';
  int index;
  Tasks({required this.index, super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  bool checkbool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            size: 30,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          const Spacer(),
                          CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                              child: cardTask[widget.index]['icon']),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            cardTask[widget.index]['title'],
                            style: titleStyleWhite,
                          ),
                          Text(
                            '${cardTask[widget.index]['taskNumber']} tasks',
                            style: tasksStyleWhite,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      topRight: Radius.circular(26)),
                ),
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                        title: Text('$index'),
                        value: checkbool,
                        onChanged: ((value) {
                          setState(() {
                            value = checkbool ? true : false;
                          });
                        }));
                  },
                ),
              )),
        ],
      ),
    );
  }
}
