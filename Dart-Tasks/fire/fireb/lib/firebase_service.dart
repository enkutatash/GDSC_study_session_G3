import 'package:firebase_auth/firebase_auth.dart';

class FirebaseSerive {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signupByEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Error happend");
    }
    return null;
  }

  Future<User?> signInByEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Error happend");
    }
    return null;
  }
}
