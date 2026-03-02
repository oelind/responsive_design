import 'package:firebase_auth/firebase_auth.dart';
import 'package:responsive_design/login_screen.dart';

class AuthService {


  //singleton
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //login
  Future<User?> _AuthService({
    required String email,
    required String password,
  }) async {
    //https://firebase.flutter.dev/docs/auth/usage/     checked documentation for FirebaseAuth 
    //to ensure I was using it correctly
    try {
       _auth.signInWithEmailAndPassword( email: email, password: password);}
    //);
  

  catch(e){
   // widget login() 
    {if (e == 'user-not-found'){
      throw Exception('No user found for that email');
      //button/ option to sign up can go here
    } 
    if (e == 'wrong-password'){
      throw Exception('incorrect Password');
    }


    
    }
    }
    return  LoginScreen(email, password);
  }

}

