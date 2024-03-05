import 'package:flutter/material.dart';
import 'package:flutter_project_todo_app/controller/services.dart';
import 'package:flutter_project_todo_app/models/task_model.dart';

// ignore: must_be_immutable
class CustomTile extends StatefulWidget {
  int index;
  VoidCallback fordeletion;
  final bool removeicon;
  TaskModel data;

  CustomTile(
      {super.key,
      required this.index,
      required this.data,
      required this.fordeletion,
      required this.removeicon});

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  bool borderEnabled = false; //variable for setting border on tapped of card
  @override
  Widget build(BuildContext context) {
    // print('custom tile i rebuilded');
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () {
          setState(() {
            borderEnabled = !borderEnabled;
          });
        },
        child: Card(
          borderOnForeground: borderEnabled,
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
                          'Task:${widget.data.title}',
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )),
                    SizedBox(
                        width: 300,
                        child: Text(
                          "Description:${widget.data.description}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )),
                    SizedBox(
                        width: 300,
                        child: Text(
                          "Date:${widget.data.dateTime.toString()}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )),
                  ],
                ),
                widget.removeicon == true
                    ? Column(
                        children: <Widget>[
                          Checkbox(
                            value: widget.data.isCompleted,
                            activeColor: Colors.black,
                            onChanged: (value) {
                              // print(widget.index);
                              setState(() {
                                upatedcheckbox(widget.data, widget.index);
                              });
                            },
                          ),
                          IconButton.filled(
                              onPressed: widget.fordeletion,
                              icon: const Icon(Icons.delete)),
                        ],
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
