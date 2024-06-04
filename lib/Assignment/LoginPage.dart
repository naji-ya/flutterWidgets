import 'package:flutter/material.dart';
import 'package:untitled1/homepage.dart';

import 'famHomepage.dart';
import 'famregisterpage.dart';

class FamLoginPage extends StatefulWidget {

  @override
  State<FamLoginPage> createState() => _FamLoginPageState();
}

class _FamLoginPageState extends State<FamLoginPage> {
  GlobalKey<FormState>  formkey=GlobalKey();
  bool displayPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392950),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150, right: 150, top: 200),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/f.png"),
                    )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Let's begin the fun here..",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white38,
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.yellow,
                            )),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.email,color: Colors.white10,),
                        hintText: "  Email",
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.black12,
                        labelText: "  Email",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        )),
                    validator: (Email){
                      if(Email!.isEmpty || !Email.contains("@") || !Email.contains("."))
                        return "Invalid Email";
                  },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
                  child: TextFormField(
                    obscureText: displayPassword,
                    decoration: InputDecoration(

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.yellow,
                            )),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(displayPassword){
                              displayPassword=false;
                            }
                            else{
                              displayPassword=true;
                            }
                          });
                        }, icon: Icon(displayPassword==true ? Icons.visibility_off: Icons.visibility,
                        color: Colors.white10,)),
                        filled: true,
                        fillColor: Colors.black12,
                        prefixIcon: Icon(Icons.lock,color: Colors.white10,),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        )),
                    validator: (Password){
                      if(Password!.isEmpty || !Password.contains("&") || !Password.contains("*") || Password.length<6)
                        return "Password too simple";
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      var valid= formkey.currentState!.validate();
                        if(valid){

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => FamHomePage()));
                        }


                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 60),
                        backgroundColor: Colors.yellow.shade600,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,


                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FamRegisterPage()));
                        },
                        child: Text(
                          "Register",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
