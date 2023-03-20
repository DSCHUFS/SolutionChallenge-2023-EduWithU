import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eduwithu/Data/Edudata_Read.dart';
import 'package:eduwithu/screens/Home&Profile/home_screen.dart';
import 'package:eduwithu/screens/Home&Profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class TestF extends StatefulWidget {
  const TestF({Key? key}) : super(key: key);

  @override
  State<TestF> createState() => _TestFState();
}

class _TestFState extends State<TestF> {
  final db = FirebaseFirestore.instance.collection('Member');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edu with U',
      home: Scaffold(
        body: StreamBuilder(
          stream: db.snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                  streamSnapshot) {
            if (streamSnapshot.hasData) {
              print('object');
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index){
                  final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
                  return Card(
                    child: ListTile(
                      title: Text(documentSnapshot['name']),
                      subtitle: Text(documentSnapshot['test']),
                    ),
                  );
                },
              );
            }
            else{
              print('else');
              return Center(child: Text(
                'dddd'
              ),
              );
            }
          },
        ),
      ),
    );
    ;
  }
}
