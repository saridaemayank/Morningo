import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:morningo/google_sign_in.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
            minimumSize: Size(double.infinity, 50),
          ),
          icon: FaIcon(
            FontAwesomeIcons.google,
            color: Colors.red,
          ),
          onPressed: () {
            final provider =
                Provider.of<GoogleSignInProvider>(context, listen: false);
            provider.googleLogin();
          },
          label: Text('Sign In With Google'),
        ),
      ),
    );
  }
}

// Scaffold(
// body: SafeArea(
// child: Row(
// children: [
// Image.asset('Assets/Images/login page.png'),
// SizedBox(
// height: 15,
// ),
// Text('Welcome to Morningo'),
// SizedBox(
// height: 5,
// ),
//
// ],
// ),
// ),
// );
