import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';



/*
class AuthManage {
  get logger => null;

  /// 회원가입
  Future<bool> createUser(String email, String pw) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: pw,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        logger.w('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        logger.w('The account already exists for that email.');
      }
    } catch (e) {
      logger.e(e);
      return false;
    }
    // authPersistence(); // 인증 영속
    return true;
  }

  /// 로그인
  Future<bool> signIn(String email, String pw) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: pw
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        logger.w('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        logger.w('Wrong password provided for that user.');
      }
    } catch (e) {
      logger.e(e);
      return false;
    }
    // authPersistence(); // 인증 영속
    return true;
  }

  /// 로그아웃
  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  /// 회원가입, 로그인시 사용자 영속
  void authPersistence() async {
    await FirebaseAuth.instance.setPersistence(Persistence.NONE);
  }
}
*/
class Login{
  FirebaseFirestore firestore = FirebaseFirestore.instance;



  getData() async{

    var Member = await firestore.collection('Member').doc('3pbyHZh1TNr9QZiB7DL1').get();
    var Profile = await firestore.collection('Profile').doc('UY8xhVMk0E5cLlyNrQSC').get();

    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    GoogleSignIn googleSignIn = GoogleSignIn();

    GoogleSignInAccount? account = await googleSignIn.signIn();
    GoogleSignInAuthentication? authentication = await account?.authentication;



    print(Member);
    print(Profile);


  }
}

