import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class FirebaseAuthDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel?> signUp(
    String email,
    String password
  ) async {
    try{
      UserCredential userCredential  = await _auth.createUserWithEmailAndPassword(
        email: email, 
        password: password);
        return UserModel(id: userCredential.user!.uid, email: email,);
    }
    catch (e){
      return null;
    }
    
  }

  Future<UserModel?> signIn(
    String email,
    String password
  ) async {
    try{
      UserCredential userCredential  = await _auth.signInWithEmailAndPassword(
        email: email, 
        password: password);
        return UserModel(id: userCredential.user!.uid, email: email,);
    }
    catch (e){
      return null;
    }
    
  }
  
  Future<void> signOut() async {
    await _auth.signOut();
  }
}