import 'package:coffe_ui/login/LoginUi.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Gradient clr = LinearGradient(
      colors: [Colors.orange, Colors.purple.shade400], begin: Alignment.topLeft, end: Alignment.bottomRight);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // final _validationController = TextEditingController();
  bool emailbool = false;
  bool btnStatus = false;
  var email = "";
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  void createUser() {
    email = emailController.text.trim();
    emailbool = EmailValidator.validate(email);

    if (emailbool == false) {
      Fluttertoast.showToast(
        msg: "Invalid Email",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
    if (emailbool && btnStatus) {
      try {
        FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text.trim(), password: passwordController.text.trim());
      } on FirebaseAuthException catch (e) {
        print(e);
        // ignore: nullable_type_in_catch_clause
      }
      Future.delayed(Duration(seconds: 2));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginUi()));

      Fluttertoast.showToast(
        msg: "User created! please Log in !",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
          child: Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.grey.shade800)),
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginUi()));
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
        elevation: 0,
        title: Text(
          "Sign up",
          style: GoogleFonts.nunito(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Sign up using one of the following options.",
              style: GoogleFonts.nunito(fontSize: 15, color: Colors.grey.shade500),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 130,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      border: Border.all(
                        color: Colors.grey.shade800,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: MaterialButton(
                    elevation: 10,
                    onPressed: () {},
                    child: Icon(Icons.android),
                  ),
                ),
                Container(
                  width: 130,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      border: Border.all(
                        color: Colors.grey.shade800,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: MaterialButton(
                    elevation: 10,
                    onPressed: () {},
                    child: Icon(Icons.ios_share),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Name",
              style: GoogleFonts.nunito(fontSize: 16, color: Colors.grey.shade500),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.orange.shade300, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name",
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Email",
              style: GoogleFonts.nunito(fontSize: 16, color: Colors.grey.shade500, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.orange.shade300, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.account_circle),
                        border: InputBorder.none,
                        hintText: "abc@gmail.com",
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Password",
              style: GoogleFonts.nunito(fontSize: 16, color: Colors.grey.shade500, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.orange.shade300, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.lock,
                          size: 20,
                        ),
                        border: InputBorder.none,
                        hintText: "Pick a strong password",
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            FlutterPwValidator(
              controller: passwordController,
              minLength: 6,
              uppercaseCharCount: 1,
              numericCharCount: 3,
              specialCharCount: 1,
              normalCharCount: 3,
              width: 380,
              height: 150,
              onSuccess: () {
                setState(() {
                  btnStatus = true;
                });
              },
              onFail: () {
                setState(() {
                  btnStatus = false;
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                  gradient: btnStatus
                      ? LinearGradient(
                          colors: [Colors.orange, Colors.purple.shade400],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)
                      : LinearGradient(
                          colors: [Colors.black, Colors.grey], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  border: Border.all(
                    color: Colors.grey.shade800,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: MaterialButton(
                elevation: 10,
                onPressed: btnStatus ? createUser : null,
                child: Text(
                  btnStatus ? "Create Account" : "Invalid Details",
                  style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ?",
                  style: GoogleFonts.nunito(fontSize: 15, color: Colors.grey.shade400),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginUi()));
                  },
                  child: Text(
                    "Log in",
                    style: GoogleFonts.nunito(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      )),
    );
  }
}
