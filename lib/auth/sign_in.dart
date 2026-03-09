import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_button/sign_in_button.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  Future<User?> googleSignIn() async {
    try {
      GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );

      FirebaseAuth auth = FirebaseAuth.instance;

      GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        return null;
      }

      GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential =
      await auth.signInWithCredential(credential);

      return userCredential.user;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/background.png"),
            )
        ),
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Sign in to continue",
                style: TextStyle(
                  fontSize: 20,
              )),
                Text("Vegi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 20,
                      offset: Offset(5,5)
                    )
                  ]

                )

                ),
                Column(
                  children: [
                    SignInButton(
                      Buttons.apple,
                      onPressed: (){},
                    ),
                  SignInButton(
                  Buttons.google,
                  onPressed: () async {
                    User? user = await googleSignIn();

                    if (user != null) {
                      debugPrint("User signed in: ${user.displayName}");
                    }
                  },
                ),

                  ],
                ),

                Column(
                  children: [
                    Text("By signing in you are agreeing to our",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[800]
                        )),
                    Text("terms and conditions",
                        style: TextStyle(
                          fontSize: 16,
                            color: Colors.grey[800]
                        )),
                  ],
                ),



              ],
              )
            )

          ]
        ),
      ),
    );
  }
}
