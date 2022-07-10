import 'package:flut_fire/screens/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.33,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/loginimg.png'), fit: BoxFit.cover),
            ),
          ),
          Container(
            width: w,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Sign into the acccount',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 24.0),
                Container(
                  width: w,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            color: Colors.grey)
                      ]),
                  child: const TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5),
                          ),
                          hintText: 'Username / Email Id',
                          prefixIcon:
                              Icon(Icons.email, color: Colors.deepOrangeAccent),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))))),
                ),
                const SizedBox(height: 24.0),
                Container(
                  width: w,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            color: Colors.grey)
                      ]),
                  child: const TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5),
                          ),
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.password,
                              color: Colors.deepOrangeAccent),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))))),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    const Text(
                      'Forgot your password?',
                      style: TextStyle(fontSize: 16.0, color: Colors.black45),
                    )
                  ],
                ),
                const SizedBox(
                  height: 70.0,
                ),
                Center(
                  child: Column(children: [
                    Container(
                      width: w * 0.5,
                      height: h * 0.06,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          image: DecorationImage(
                              image: AssetImage('images/loginbtn.png'),
                              fit: BoxFit.cover)),
                      child: const Center(
                          child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 24.0, color: Colors.white),
                      )),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "Don't have account? ",
                            style: const TextStyle(
                                fontSize: 16.0, color: Colors.grey),
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap =
                                        () => Get.to(() => const SignUp()),
                                  text: "Create",
                                  style: const TextStyle(
                                      fontSize: 20.0, color: Colors.black87)),
                            ])),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
