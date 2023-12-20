

import 'package:flutter/material.dart';

void main(){  
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
         body:  Column(
          
           children: [
             SizedBox(height: 210
             ),
            Text(
              'What’s your strength\n            level?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
           SizedBox(height: 20),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     
                     children: [
                       SizedBox(width: 6),
                     MyLittleCont(text: "Very low "),
                     SizedBox(width: 6),
                                  MyLittleCont(text: "Low"), 
                                  SizedBox(width: 6),
                                   MyLittleCont(text: "Medium ",isSelected: true,), 
                                   SizedBox(width: 6), 
                                   MyLittleCont(text: "High "),
                                   SizedBox(width: 6),  
                                   MyLittleCont(text: "Very high",),
                     SizedBox(
                                  height: 6,
                     ),
                     ],
                    ),
             SizedBox(height: 15),
                 Text(
              '       This means you can do 16+ push ups, 3+\n pull ups, 3+ single leg squats, and a 1+\n minute plank.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
              Text(
                  "...and you have",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
             Row(
                     mainAxisAlignment: MainAxisAlignment.center,

                     children: [
                     SizedBox(width: 10),
                    MyLittle(text: "Beginner",
                    text1: "0-6",
                    isSelected: true,
                    text2: "months",
                    ),
                       SizedBox(width: 10),
                     MyLittle(
                      text: "Intermediate",
                     text1: "6-18",
                     text2: "months",),
                      SizedBox(width: 10),
                      MyLittle(
                      text: "Advanced",
                      text1: "18+",
                      text2: "months",),
                     SizedBox(
                                  height: 6,
                     ),
                     ],
                    ),
                    SizedBox(height: 15),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 20),
                       child: Text(
                                       "strength training experience in the last 5 years.",
                                   style: TextStyle(
                                     color: Colors.grey,
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                   ),
                                   textAlign: TextAlign.center,
                                 ),
                     ),
           ],
           
         ),
       ),
    );
  }
}

class MyLittleCont extends StatelessWidget {

   const MyLittleCont({
    super.key,
    required this.text,
    this.isSelected = false,
  });
   final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        
        
        color: isSelected?Colors.green:Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            30,
            ),
            
        )
      ),
      child: Padding(padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      child: Text( 
        text,
        style: const TextStyle(
         
          fontSize: 12,
          color: Colors.black,
        ),
      ),
      ),
    );
  }
}

class MyLittle extends StatelessWidget {

   const MyLittle({
    super.key,
    required this.text, 
    required this.text1,
     this.isSelected = false,
     required this.text2,
  });
   final String text;
   final String text1;
   final bool isSelected;
    final String text2;
    
    
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 108,
      width: 98,
      
      decoration: BoxDecoration(
        
       shape: BoxShape.rectangle,
      border: Border.all(
        width: 3,
       color: isSelected?Colors.green:Colors.white,
      ),
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10,
            ),
            
        )
      ),
    child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
             left: 22,
             right: 21

            ),
            child: Padding(
              padding: const EdgeInsets.only(),
             
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Text(
            text1,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}