import 'package:daily_notes/models/data_model.dart';
import 'package:daily_notes/utils/my_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';



class NotesController extends GetxController{
  TextEditingController noteTitleController=TextEditingController();
  TextEditingController noteDescriptionController=TextEditingController();
  var notesList=<DataModel>[].obs;

  saveData(){
    if(noteTitleController.text.isEmpty){
    MyToast().toast("Enter Title");
    }else if(noteDescriptionController.text.isEmpty){
      MyToast().toast("Enter Description");
    }else{
       var title=noteTitleController.text;
       var dis=noteDescriptionController.text;

       DateTime now = DateTime.now();
       String date = DateFormat('dd-MMM-yyyy').format(now);

       notesList.add(DataModel(title: "$title",dis: "$dis",date: "$date"));
       Get.back();
    }
  }

}
