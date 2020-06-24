import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

 void main(){
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       backgroundColor: Color(0xFFf18867),
       appBar: AppBar(
         backgroundColor:  Color(0xFFf6f4e6),
         title: Text('Dice App',style: TextStyle(color: Colors.black),),
       ),
       body: Diceapp(),
     ),
   )
   );
 }
 class Diceapp extends StatefulWidget {
   @override
   _DiceappState createState() => _DiceappState();
 }
 class _DiceappState extends State<Diceapp> {
   int next = 1;
   @override
   Widget build(BuildContext context) {
     return Center(
       child: Column(
         children: <Widget>[
           SizedBox(height: 40.0),
           Container(
             padding: EdgeInsets.all(15.0),
              height: 60.0,
              width: 70.0,
             decoration: BoxDecoration(
               shape: BoxShape.rectangle,
               color: Color(0xFFf6f4e6),
             ),
             child:
             Text('$next',textAlign: TextAlign.center,
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 20.0,
               ),
             ),
           ),
           SizedBox(height: 40.0),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              Expanded(child: Image.asset('images/dice$next.png'),
              ),
               SizedBox(width: 40.0),
               Expanded(child: Image.asset('images/dice$next.png'),
               ),
            ]
           ),
           SizedBox(height: 30.0),
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               RaisedButton(
                 padding: EdgeInsets.all(10.0),
                   onPressed:(){
                     setState(() {
                       next=Random().nextInt(6)+1;
                     });
                   },
                   child:Text('Play With Dice',
                     style: TextStyle(
                       fontSize:20.0 ,
                        fontFamily: 'Pacifico',
                   ),
                   )
               ),
             ],
           )
         ],
       ),
     );
   }
 }
 