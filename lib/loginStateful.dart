import 'package:flutter/material.dart';
import 'package:untitled1/registerpage.dart';

import 'homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginWithStatefull(),
  ));
}

class LoginWithStatefull extends StatefulWidget {
  @override
  State<LoginWithStatefull> createState() => _LoginWithStatefullState();
}

class _LoginWithStatefullState extends State<LoginWithStatefull> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage(
                "",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 250, left: 50, right: 50),
                  child: Image(
                    image: AssetImage("assets/images/meta.png"),
                    height: 60,
                    width: 60,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "email",
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (email) {
                      if (email!.isEmpty ||
                          !email.contains("@") ||
                          !email.contains(".")) {
                        return "Invalid email";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextFormField(
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                showpass = false;
                              } else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "Invalid Password";
                      }
                    },
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    var valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(360, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(77),
                  child: Row(
                    children: [
                      const Text(
                        "Don't have an account?  ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        child: const Text(
                          "Register now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
