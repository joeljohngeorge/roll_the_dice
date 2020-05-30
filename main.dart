import 'package:flutter/material.dart';
import 'dart:math';
void main()=>runApp(DiceApp());
class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Scaffold(
        appBar: AppBar(
            title:Center(child: Text("Dice")),
            backgroundColor:Colors.green),
     body: Dicepage(),), 
    );
  }
}
class Dicepage extends StatefulWidget {
  
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftno=1;
  int rightno=1;
  void change()
  { 
    leftno=Random().nextInt(6)+1;
    rightno=Random().nextInt(6)+1;
   }
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: 
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Image.asset('diceimages/dice$leftno.png')
          ),
          ),
          Expanded(child: 
          Padding(
            padding: const EdgeInsets.all(17.0),
            
            child: Image.asset('diceimages/dice$rightno.png')),
          ),
        
        Center(
          child: RaisedButton(
            onPressed:(){
              setState(() {
                change();
              });
            },
              color:Colors.green,
              child:Text("ROLL"),

          ),
        )
        
       ],
      ),
    );
          
  }
}
