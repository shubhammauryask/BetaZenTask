import 'package:betazen/Screen1.dart';
import 'package:betazen/Screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen1()));
              },
              child: const Text('Screen1',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color:Colors.black
              ),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
              ),
            ),
            SizedBox(height: 10,),

            ElevatedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen2()));
              },
              child: const Text('Screen2',style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color:Colors.black
              ),),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
