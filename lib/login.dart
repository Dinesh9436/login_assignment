import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.greenAccent, Colors.blue],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          color: Colors.transparent.withOpacity(30),
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: const Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                          )),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Sign In To Your Account",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width * 0.7,
                      height: height * 0.3,
                      child: Image.network(
                          "https://pngimg.com/uploads/piggy_bank/piggy_bank_PNG52.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: width * 0.8,
                      height: height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.transparent.withOpacity(20.0),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: "USERNAME",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      width: width * 0.8,
                      height: height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.transparent.withOpacity(20.0),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "PASSWORD",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.8,
                    height: height * 0.1,
                    color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Center(
                        child: Text(
                      "LOG IN",
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Center(
                    child: Row(
                  children: [
                    const Text(
                      "Dont have an account? ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
