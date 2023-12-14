import 'package:flutter/material.dart';
import 'package:for_my_special_one/screens/special_note.dart';
class Bestie extends StatefulWidget {
  const Bestie({Key? key}) : super(key: key);

  @override
  State<Bestie> createState() => _BestieState();
}

class _BestieState extends State<Bestie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 1480,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://res.cloudinary.com/dnu3bviq2/image/upload/v1702574470/wdjwgw1bepw5xkisl2j6.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 600,
                  left: 650,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan[800], // Background color
                      ),
                      onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Special_note()),
                    );},
                      child: Text("Next",style: TextStyle(color: Colors.white))
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
