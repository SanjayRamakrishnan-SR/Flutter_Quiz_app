import 'package:flutter/material.dart';
import 'package:quiz_app/login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginScreen(),
    );
  }
}
class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> options = ["Kabbadi","Cricket","Football","Hockey"];
  

  String selected='Cricket';
  String correct='Hockey';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Quiz App")

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1. What is the national sports of India?"),
            for(int i=0; i<options.length; i++)
            RadioListTile<Object>(value: options[i],
            title:Text(options[i]),
             groupValue: selected, 
             onChanged: ( value) {
              setState(() {
                selected = value.toString();
              });
             },
             ),
             ElevatedButton(
              onPressed: (){
                showDialog(context: context, 
                builder: (contex){
                  return AlertDialog(
                    title: selected==correct?Text("Correct") : Text("Incorrect")
                  );
                } 
                );
              }, 
              child: Text("Check Answer")),
          ],
        ),
      ),
    );
    
  }
}
//stl
