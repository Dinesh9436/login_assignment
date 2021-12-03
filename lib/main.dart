import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.greenAccent, Colors.blue],
            ),
          ),
          child:
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          //color: Colors.transparent.withOpacity(30),
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
                       // color: Colors.transparent.withOpacity(20.0),
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
                      //  color: Colors.transparent.withOpacity(20.0),
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
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Center(
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.center,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
    //ailing comma makes auto-formatting nicer for build methods.
    
  }
}
