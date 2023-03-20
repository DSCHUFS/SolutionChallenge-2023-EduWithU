import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class testdata{
 final String name;
 final String test;

 testdata(
     this.name,
     this.test
     );
}

final db = FirebaseFirestore.instance;


getData() async{
  var result = await db.collection('Test').doc('wow').get();
  print(result.data().toString());
  return result;
}



//final docRef = db.collection('Test').doc('wow');
