import 'package:flutter/material.dart';

import 'loginStateful.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> _formkey = GlobalKey();
  bool showPassword = true;
  bool showConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 50, right: 50),
                  child: Image(
                    image: AssetImage("assets/images/meta.png"),
                    height: 60,
                    width: 60,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    "Please register",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "username",
                        labelText: "username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    validator: (username) {
                      if (username!.isEmpty) {
                        return "Please enter a name";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "email",
                        labelText: "email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    validator: (email) {
                      if (email!.isEmpty ||
                          !email.contains("@") ||
                          !email.contains(".")) {
                        return "Please enter a valid email";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: TextFormField(
                    obscureText: showPassword,
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (showPassword) {
                                  showPassword = false;
                                } else {
                                  showPassword = true;
                                }
                              });
                            },
                            icon: Icon(showPassword == true
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "Invalid Password";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: TextFormField(
                    obscureText: showConfirmPassword,
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        labelText: "confirm passwordd",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (showConfirmPassword) {
                                  showConfirmPassword = false;
                                } else {
                                  showConfirmPassword = true;
                                }
                              });
                            },
                            icon: Icon(showConfirmPassword == true
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    validator: (confirmpasword) {
                      if (confirmpasword!.isEmpty) {
                        return "Invalid password";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    var valid = _formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginWithStatefull()));
                    }
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(360, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginWithStatefull()));
                      },
                      child: Text(
                        "Login ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
