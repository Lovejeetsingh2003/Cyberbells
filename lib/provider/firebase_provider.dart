import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirebaseProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  User? get user => _user;

  Future<bool> loginWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(email: email, password: password);
      _user = userCredential.user;
      notifyListeners();
      return true;
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message ?? "Authentication failed");
      notifyListeners();
      return false;
    } catch (e) {
      Fluttertoast.showToast(msg: "Something went wrong");
      notifyListeners();
      return false;
    }
  }

  Future<void> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      _user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message ?? "Authentication failed");
    } catch (e) {
      Fluttertoast.showToast(msg: "Something went wrong");
    }
    notifyListeners();
  }

  Future<void> signout() async {
    try {
      await _auth.signOut();
      notifyListeners();
    } catch (e) {
      print("Error while Sign out: $e");
    }
  }
}
