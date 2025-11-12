import 'package:flutter/material.dart';
void main () {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int compteur =0 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Atelier 04"),
              Text("La valeur du compteur est : $compteur"),
              ElevatedButton(onPressed: () {
                setState(() {
                  compteur ++;
                });
              }, child: Text('Incrementer')),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  compteur --;
                });
              }, child: Text("--")),
              SizedBox(width: 10),
              ElevatedButton(onPressed: () {
                setState(() {
                  compteur = 0;
                });
              }, child: Text('Reinitialiser')),
              SizedBox(width: 10),
              ElevatedButton(onPressed: (){
                setState(() {
                  compteur ++;
                });
              }, child: Text("+")),
            ],
           ),
           ],
          
          ),
        ),
      ),
    );
  }
} 

