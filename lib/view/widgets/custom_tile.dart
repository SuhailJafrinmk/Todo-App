import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTile extends StatefulWidget {
  String taskTitle;
  String taskDescription;
  DateTime dateTime;
  VoidCallback fordeletion;
  CustomTile(
      {required this.taskTitle,
      required this.taskDescription,
      required this.fordeletion,
      required this.dateTime});

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
        elevation: 20,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                      width: 300,
                      child: Text(
                        'Task:${widget.taskTitle}',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                  SizedBox(
                      width: 300,
                      child: Text(
                        "Description:${widget.taskDescription}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                  SizedBox(
                      width: 300,
                      child: Text(
                        "Date:${widget.dateTime.toString()}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  Checkbox(
                      value: isChecked,
                      activeColor: Colors.black,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                          // for(int i in taskListnotifier.value){
                          //   completedTasksNotifier.value.add(isChecked);
                          // }

                          print(isChecked);
                        });
                      }),
                  IconButton.filled(
                      onPressed: widget.fordeletion, icon: Icon(Icons.delete)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
