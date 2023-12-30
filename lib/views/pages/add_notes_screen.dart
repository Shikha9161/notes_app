import 'package:daily_notes/controllers/notes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNotesScreen extends StatefulWidget {
  const AddNotesScreen({super.key});

  @override
  State<AddNotesScreen> createState() => _AddNotesScreenState();
}

class _AddNotesScreenState extends State<AddNotesScreen> {
  NotesController notesController=Get.find<NotesController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Note"),
      backgroundColor: Colors.blue,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        
        child:  Column(
          children: [
             TextField(
              controller: notesController.noteTitleController,
              decoration: const InputDecoration(
                hintText: "Enter Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller: notesController.noteDescriptionController,
              decoration: const InputDecoration(
                hintText: "Enter Description",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: MediaQuery.of(context).size.width,

                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Set the background color
                    ),
                    onPressed: (){
                      notesController.saveData();
                    }, child:Text("Add",style: TextStyle(color: Colors.white),) )),
          ],
        ),
      ),
    );
  }
}
