import 'package:flutter/material.dart';
import 'package:for_my_special_one/screens/my_bestest_friend.dart';
class New_year extends StatefulWidget {
  const New_year({Key? key}) : super(key: key);

  @override
  State<New_year> createState() => _New_yearState();
}

class _New_yearState extends State<New_year> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 1480,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('https://res.cloudinary.com/dnu3bviq2/image/upload/v1702574286/s2ujejrr8y5b8pofkl0c.png'),
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
                      MaterialPageRoute(builder: (context) => Bestie()),
                    );},
                      child: Text("Next",style: TextStyle(color: Colors.white),)
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
