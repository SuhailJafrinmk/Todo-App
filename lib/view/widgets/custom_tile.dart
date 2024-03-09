import 'package:flutter/material.dart';
import 'package:flutter_project_todo_app/controller/services.dart';
import 'package:flutter_project_todo_app/models/task_model.dart';
import 'package:google_fonts/google_fonts.dart';

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
  bool editMode = false;
  @override
  Widget build(BuildContext context) {
    // print('custom tile i rebuilded');
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
      child: Card(
        margin: EdgeInsets.only(left: 10, right: 10),
        borderOnForeground: borderEnabled,
        elevation: 15,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                      width: 200,
                      child: Text(
                        'Task:${widget.data.title}',
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                  SizedBox(
                      width: 200,
                      child: Text(
                        "${widget.data.description}",
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: RichText(
                        text: TextSpan(
                            text: 'Date :',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                          TextSpan(
                              text: widget.data.dateTime.toString(),
                              style: TextStyle(
                                color: Colors.black38,
                              ))
                        ])),
                    // child: Text(
                    //   "Date:${widget.data.dateTime.toString()}",
                    //   maxLines: 1,
                    //   overflow: TextOverflow.ellipsis,
                    // )
                  ),
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
                        IconButton(
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.transparent),
                            onPressed: widget.fordeletion,
                            icon: const Icon(Icons.delete)),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
