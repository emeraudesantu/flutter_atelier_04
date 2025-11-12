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
  double degre = 0 ;
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
              // ElevatedButton(onPressed: (){
              //   setState(() {
              //     compteur --;
              //   });
              // }, child: Text("--")),
              // SizedBox(width: 10),
              // ElevatedButton(onPressed: () {
              //   setState(() {
              //     compteur = 0;
              //   });
              // }, child: Text('Reinitialiser')),
              // SizedBox(width: 10),
              // ElevatedButton(onPressed: (){
              //   setState(() {
              //     compteur ++;
              //   });
              // }, child: Text("+")),

              IconButton(onPressed: (){
                setState(() {
                  compteur ++;
                });
              }, icon: Icon(Icons.remove)),
              IconButton(onPressed: (){
                setState(() {
                  compteur = 0;
                });
              }, icon: Icon(Icons.refresh)),
            IconButton(onPressed: () {
              setState(() {
                compteur ++;
              });
            }, icon: Icon(Icons.add)),
            ],
           ),
           Text("Merci de choisir le degre de rotation"),
           Slider(value: degre, min : 0, max : 360, onChanged: (value) {
            setState(() {
              degre = value ;
            });
           },
           ), 
           Text("le degre choisi est ${degre.toStringAsFixed(0)}"),
           ],
          
          ),
        ),
      ),
    );
  }
} 

