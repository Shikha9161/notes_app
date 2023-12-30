import 'package:daily_notes/controllers/notes_controller.dart';
import 'package:daily_notes/utils/constants.dart';
import 'package:daily_notes/views/pages/add_notes_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/data_model.dart';

class ViewNotesScreen extends StatefulWidget {
  
  const ViewNotesScreen({super.key});

  @override
  State<ViewNotesScreen> createState() => _ViewNotesScreenState();
}

class _ViewNotesScreenState extends State<ViewNotesScreen> {
NotesController notesController=Get.put(NotesController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("VIEW NOTES",style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.blue,
      ),
      body: Obx(
        ()=> notesController.notesList.value.length>0?ListView.builder(
          itemCount: notesController.notesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Date: ${notesController.notesList[index].date}",style: const TextStyle(color: Colors.white),),
                    Text("Title: ${notesController.notesList[index].title}",style: TextStyle(color: Colors.white),),
                    Text("Description: ${notesController.notesList[index].dis}",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            );
          },
        ):Center(child: Text("No Data found!"),),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        elevation: 10.0,
        onPressed: () {
          Get.to(AddNotesScreen());
        },
        child: Icon(Icons.add,
        size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
