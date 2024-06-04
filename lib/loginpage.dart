import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Purple.png"),
                fit: BoxFit.fill),
          ),


          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 150, right: 150, top: 100),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 150),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "username",
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: Icon(Icons.visibility),
                    prefixIcon: Icon(Icons.password),
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.black,
                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Don't have an account ? Register",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
