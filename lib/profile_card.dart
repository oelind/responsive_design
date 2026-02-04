import 'package:flutter/material.dart';
import 'package:responsive_design/login_screen.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Design')),
      body: Center(
        child: Container(
          color: Colors.grey[200],
          padding: const EdgeInsets.all(20),
          constraints: const BoxConstraints(maxWidth: 800),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return Row(  //for a wide layout
                // mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildAvatar(),
                    const SizedBox(width: 20),
                    _buildContent(context),
                  ],
                );
              }//end of if statment

              else {
                return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildAvatar(),
                  SizedBox(height: 20),
                  _buildContent(context),
                ],
              );}
            },
          ),
        ),
      ),
    );
  }
}

//function that returns a widget

Widget _buildAvatar() {
  return Center(
    child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.lightGreenAccent,
        shape: BoxShape.circle,
      ),
      child: Icon(Icons.person, size: 50, color: Colors.white),
    ),
  );
}

// content widget for the profile
Widget _buildContent( BuildContext context) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fluffy Giggles',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text('Favorite Class cs:220'),
        SizedBox(height: 20),
        ElevatedButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => LoginScreen()),
          );
        },
         child: Text('Log in')),
      ],
    ),
  );
} // end of content widget
