import 'package:firebase_auth/firebase_auth.dart';

class AuthServisce {


  //singleton
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //login
  Future<User?> signIn({
    required String email,
    required String password,
  }) async ({
    try (email: email,
    password: password,);
  })


  if (e.code == 'user-not-found'){
    throw Exception('No user found for that email');
  } else if (e.code == 'wrong-password'){

  }

}

