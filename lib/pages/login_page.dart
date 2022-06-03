import 'package:coba/pages/home_page.dart';
import 'package:coba/pages/sign_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.lightBlue),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 225,
              ),
              Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "SIMS",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Sistem Infomasi Menejemen Sampah"),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 260,
                        child: Text("EMAIL"),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 260,
                        child: Text("PASSWORD"),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: MaterialButton(
                              height: 40,
                              onPressed: () {     Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));},
                              color: Colors.greenAccent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 70),
                            child: MaterialButton(
                              height: 40,
                              onPressed: () {  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignPage()));},
                              color: Colors.greenAccent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "© 2022 Copyright: Universitas Komputer Indonesia",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
