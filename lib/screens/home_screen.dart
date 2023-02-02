import 'package:flutter/material.dart';
import 'package:todo_app_with_api/model/cardTask.dart';
import 'package:todo_app_with_api/taskItem.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Lists',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(5),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 3,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return taskItem(
                    icon: cardTask[index]['icon'],
                    index: index,
                    title: cardTask[index]['title'],
                    taskNumber: cardTask[index]['taskNumber'],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 50,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
