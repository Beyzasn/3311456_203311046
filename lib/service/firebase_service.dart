import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/Screens/signUpScreen.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User?> signInWithEmail(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  Future SignOut() async {
    return await _auth.signOut();
  }

  Future<User?> createPerson(
      String name, String adres, String telefon, String email, String password) async {
        
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _firestore.collection('Person').doc(user.user!.uid.toString()).set({
      'userName': name,
      'userMail': email,
      'userAdres': adres,
      'userTelefon': telefon,
      'userPassword': password,
    });

    return user.user;
  }
}
