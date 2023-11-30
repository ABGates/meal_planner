import "package:firebase_auth/firebase_auth.dart";

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential res = await _auth.signInAnonymously();   
      User? user = res.user;
      return user;
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in email / pass

  //register email / pass

  //sign out


}