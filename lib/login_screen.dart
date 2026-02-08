import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});
  //bool _passHidden;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
 
class _LoginScreenState extends State<LoginScreen> {
//since we will have text fields that will be typed into this needs to be a stateFULL widget
  bool _passHidden = true;

  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login',)),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Form(
            key: _formKey, // like an id for a particular form
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _header(),
                const SizedBox(height: 40,),
                _username(),
                const SizedBox(height: 20,),
                _password(),
                const SizedBox(height: 20,),
                _loginButton(),
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
      controller: _usernameController,
      decoration: const InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty){
          return 'Please enter your username';
        }//end of if statment
        return null; // no error
      }, //end of validator
    );
  }//end of username widget

  Widget _password() {
    //bool _passHidden;
    return TextFormField(
      controller: _passwordController, //TODO fix
      obscureText: _passHidden,
      decoration: InputDecoration(
        labelText: 'Password',
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(_passHidden ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            setState(() {
              _passHidden = !_passHidden;
            },);
          }, //end of on pressed
          ),
      ),
      validator: null, //TODO fix 
    );
  }//end of password widget

  Widget _loginButton () {
    return ElevatedButton(
      onPressed: _submitLogin(), 
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: const TextStyle(fontSize: 18),
      ), //end of button styeform
      child: const Text('Login'));
  }// end of login button widget

  Widget _submitLogin() {
    
    if (){ 
      if (_formKey.currentState!.validate()){
      final username = _usernameController.text.trim();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('loggin in user $username')),
      );
    }//end of if statment
    else {

    }
    }
  }//end of submit login function for login button


} //end of login-screen state calss