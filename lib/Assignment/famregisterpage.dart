import 'package:flutter/material.dart';
import 'package:untitled1/Assignment/LoginPage.dart';

class FamRegisterPage extends StatefulWidget {

  @override
  State<FamRegisterPage> createState() => _FamRegisterPageState();
}

class _FamRegisterPageState extends State<FamRegisterPage> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showregPassword=true;
  bool showregConfrmpassword=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff392950),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200,left:150,right: 150),
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/f.png"))
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Text("Please register to continue",
                style:TextStyle(
                  color: Colors.white38,
                  fontSize: 18,
                ) ,),
              SizedBox(
                height: 20,
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
                      prefixIcon: Icon(Icons.person,color: Colors.white10,),
                      hintText: "  Username",
                      hintStyle: TextStyle(color: Colors.white60),
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: "  Username",
                      labelStyle: TextStyle(
                        color: Colors.white70,
                      )),
                  validator: (username){
                    if(username!.isEmpty || username.contains(" ") ){
                      return "Invalid Username";
                    }
                  },
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      ),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: Icon(Icons.email,color: Colors.white10,),
                    hintText:"  Email",
                    hintStyle: TextStyle(
                      color: Colors.white60,
                    ),
                    labelText: "  Email",
                    labelStyle: TextStyle(
                      color: Colors.white70
                    ),
                    border: OutlineInputBorder(

                      borderRadius:
                        BorderRadius.circular(12)
                    )
                  ),
                  validator: (email){
                    if(email!.isEmpty || !email.contains("@") || !email.contains(".") ){
                      return "Invalid email";
                    }
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
                child: TextFormField(
                  obscureText: showregPassword,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {

                        if(showregPassword){
                          showregPassword=false;
                        }
                        else{
                          showregPassword=true;
                        }
                      });
                    },
                        icon: Icon(showregPassword==true ? Icons.visibility_off: Icons.visibility,
                        color: Colors.white10,)),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white60,
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white70),
filled: true,
fillColor: Colors.black12,
prefixIcon: Icon(Icons.lock,color: Colors.white10,),
border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),

)            ),
                  validator: (password){
                    if(password!.isEmpty || !password.contains("&") || !password.contains("*") || password.length<6){
                      return "Password is not strong ,try using & and * symbols";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
                child: TextFormField(
                  obscureText: showregConfrmpassword,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {

                          if(showregConfrmpassword){
                            showregConfrmpassword=false;
                          }
                          else{
                            showregConfrmpassword=true;
                          }
                        });
                      },
                          icon: Icon(showregConfrmpassword==true ? Icons.visibility_off: Icons.visibility,
                            color: Colors.white10,)),
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(
                        color: Colors.white60,
                      ),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.black12,
                      prefixIcon: Icon(Icons.lock,color: Colors.white10,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),

                      )            ),
                  validator: (confirmpassword){
                    if(confirmpassword!.isEmpty || !confirmpassword.contains("&") || !confirmpassword.contains("*") || confirmpassword.length<6){
                      return "Password is not strong ,try using & and * symbols";
                    }
                  },
                ),
              ),
SizedBox(
  height: 20,
),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  var valid= formkey.currentState!.validate();
                  if(valid){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FamLoginPage()));
                  }
                }, child: Text("Sign Up",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade600,
                  minimumSize: Size(360, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),),
              ),
              SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You already have an account?",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FamLoginPage()));
                  }, child: Text("Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
