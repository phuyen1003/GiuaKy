import 'package:flutter/material.dart';
import 'package:proje_fruit_shopping/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);






  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color(0xFF2C2C2C),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 300,
                      child: Image.asset("images/vegetablesFruit.png"),
                  ),
                  const SizedBox(
                    height: 350,
                  )
                ],
              ),
            ),
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("KEEPING YOU HEALTHY",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFF1C950),
                      letterSpacing: 7.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Let's start eating\nHealthy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Inter",
                    fontSize: 40.0,
                    letterSpacing: 2.0,
                  ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),
                  Text("In honor of World Health Day\n"
                      "we'd like to give you this\n"
                      "amazing offer.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inter",
                        fontSize: 15.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 90.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  child: const Text("Already have an Account? Sign-in",
                  style:TextStyle(
                    color: Color(0xFFF1C950),
                    fontSize: 12.0,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700
                  ),
                  ),
                  onPressed: (){

                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 320,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MainScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF1C950),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      )
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Get Started",
                        style: TextStyle(
                          color: Color(0xFF2C2C2C),
                          fontSize: 17.0,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                        ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon( // <-- Icon
                          Icons.arrow_right_alt,
                          size: 24.0,
                          color: Color(0xFF2C2C2C),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
