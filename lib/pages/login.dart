import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static String name="";
  bool but = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.white,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Text("Login Page"),
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset('assets/images/hey.jpg',width: 200,height: 200,),
              Text(
                "Login",
                textScaleFactor: 2.6,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical :14.0, horizontal: 40),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter user name",
                        labelText: "User name"
                      ),
                      onChanged: (value){
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"
                      ),
                    ),
                    SizedBox(height:20),

                    Material(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(12),
                      child: InkWell(
                        onTap: () async {
                          setState(() { 
                          but = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                          Navigator.pop(context);
                          setState(() {
                            but = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: 150,
                          height: 50,
                          child: but ? Icon(Icons.done, color: Colors.white,) : Text(
                            "Login",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}