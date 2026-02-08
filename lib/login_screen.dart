import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  //bool _passHidden;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
 
class _LoginScreenState extends State<LoginScreen> {
//since we will have text fields that will be typed into this needs to be a stateFULL widget
bool _passHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login',)),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Form(
            key: null, // like an id for a particular form
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _header(),
                const SizedBox(height: 40,),
                _username(),
                const SizedBox(height: 20,),
                _password(),
              ]
            ),
          ),
        ),
      )
    );
  } //end of build widget

//header function
  Widget _header() {
    //assuming user already has login set up
    return const Text(
      'Welcome back',
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }//end of header function

  Widget _username() {
    return TextFormField(
      controller: null,
      decoration: const InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person),
      ),
      validator: null, //TODO fix
    );
  }//end of username function

  Widget _password() {
    //bool _passHidden;
    return TextFormField(
      controller: null, //TODO fix
      obscureText: _passHidden,
      decoration: const InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(_passHidden ? Icons.visibility_off : Icons.visibility),
          onPressed: onPressed () {
            setState(() {
              _passHidden = !_passHidden;
            },);
          }, //end of on pressed
          ),
      ),
     
    );
  }//end of username function


} //end of login-screen state calss