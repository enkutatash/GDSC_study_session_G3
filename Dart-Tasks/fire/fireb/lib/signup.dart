import 'package:fireb/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fireb/form.dart';
import 'package:fireb/login.dart';
import 'package:fireb/firebase_service.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final FirebaseSerive _auth = FirebaseSerive();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sign up"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "signup",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          FormContainerWidget(
            controller: _emailcontroller,
            labelText: "Email",
            hintText: "Email",
            isPasswordField: false,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          FormContainerWidget(
            controller: _passwordcontroller,
            labelText: "Password",
            hintText: "*********",
            isPasswordField: true,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          GestureDetector(
            onTap: _signup,
            child: Container(
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Signup",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account"),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(color: Colors.purple),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  void _signup() async {
    String email = _emailcontroller.text;
    String password = _passwordcontroller.text;
    User? user = await _auth.signupByEmailAndPassword(email, password);
    try {
      if (user != null) {
        print("new user added");
        // ignore: use_build_context_synchronously
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } else {
        print("null email or password$email, $password");
      }
    } catch (e) {
      print("error catch");
    }
  }
}
