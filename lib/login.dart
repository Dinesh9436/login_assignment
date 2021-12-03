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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.greenAccent, Colors.blue],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent.withOpacity(0.3),
                                  shape: BoxShape.circle),
                              child: const Icon(
                                Icons.close_rounded,
                                color: Colors.white,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Sign In To Your Account",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white),
                            ),
                          )
                        ],
                      ),
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
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal:30.0),
                      child: TextFormField(
            decoration: const InputDecoration(
                
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide.none,
                  //borderSide: const BorderSide(),
                ),

                hintStyle: TextStyle(color: Colors.white,fontFamily: "WorkSansLight"),
                filled: true,
                fillColor: Colors.white24,
                hintText: 'USERNAME'),
          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal:30.0),
                      child: TextFormField(
            decoration: const InputDecoration(
                
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide.none,
                  //borderSide: const BorderSide(),
                ),

                hintStyle: TextStyle(color: Colors.white,fontFamily: "WorkSansLight"),
                filled: true,
                fillColor: Colors.white24,
                hintText: 'Password'),
          ),
                    ),
                    Container(
                      width: width * 0.8,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Center(
                          child: Text(
                        "LOG IN",
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      )),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          "Dont have an account? ",
                          style: TextStyle(color: Colors.grey[50]),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )),
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
