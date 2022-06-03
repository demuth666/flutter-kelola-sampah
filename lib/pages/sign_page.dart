import 'package:coba/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login(String email, password) async {
    try {
      Response response = await post(Uri.parse('https://reqres.in./api/register'),
      body: {
        'email' : email,
        'password' : password
      }
      );
      if(response.statusCode == 200){
        print('akun berhasil di buat');
      }else {
        print('gagal');
      }
    } catch(e) {
      print(e.toString());
    }
  }
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
                height: 430,
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
                        child: Text("Email"),
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
                        child: Text("Password"),
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
                        height: 10,
                      ),
                      Container(
                        width: 260,
                        child: Text("Confirm Password"),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextFormField(
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
                            padding: EdgeInsets.only(left: 105),
                            child: MaterialButton(
                              height: 40,
                              onPressed: () {  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));},
                              color: Colors.greenAccent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Sign Up",
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
