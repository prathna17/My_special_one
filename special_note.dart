import 'package:flutter/material.dart';
import 'package:for_my_special_one/screens/special_video.dart';

class Special_note extends StatefulWidget {
  const Special_note({Key? key}) : super(key: key);

  @override
  State<Special_note> createState() => _Special_noteState();
}

class _Special_noteState extends State<Special_note> {
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://res.cloudinary.com/dnu3bviq2/image/upload/v1702574352/brutiijhl2bh6pliqhwb.png'),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("My special one❤️❤️",style: TextStyle(fontSize: 32,color: Colors.pink[700]),),
              Align(
                alignment: Alignment.center,
                child: Image(image: NetworkImage('https://res.cloudinary.com/dnu3bviq2/image/upload/v1702574239/ml81tejlqyhjihdgyrur.jpg'),height: 250,width: 150,)
              ),
              Text("A very very happy new year Konika🫂🫂",style: TextStyle(fontSize: 20)),
              Text("Ye sal was full of ups and downs. Is sal main bhaut kuch hua hai. Is sal bhaut sari amazing cheeze hui aur kuch cheeze aisi hui jo ki bhaut zyada heartbreaking thi. Par in sab cheezo se you came out be like a fighter. Tune apne ap ko khud sambhala sab cheeze apne ap handle kari tu har situation main pure time strong rahi sahi main meri inspiration hai tu bhaut proud feel hota hai mujhe tujhpe🫂🫂."),
              Text("Is sal main hamne bhaut sari happy memories create ki. Par because of my silly behaviour hamari friendship main bhaut sare ups and downs bhi aye par hamne hamesha apas main hi sab sought karke sab theek karlia🫂🫂. Maine is sal bhaut sari cheeze sikhi hai about friendship about life aur ye sab tune mujhe sikhaya hai mujhe mera better version banne main meri help kari hai. main bhaut proud feel karti hun ki i have a friend like you i literally feel blessed ki mere pas tere jaisa dost hai🫂🫂🫶🫶🧿🧿. i am always there for you har situation main tere sath hun main kabhi bhi kuch bhi pareshani ho tujhe i am there to help you out🫂🫂"),
              Text("Ye naya sal teri life main bhaut sari khushiyan leke aye aur tere sare dreams pure ho main bas yahi pray karti hun bhagwan ji se🫂🫂. ham aise hi sath rahe hamesha aise hi masti karen sath main khoob pade aur apne parents ko proud feel karae sath main ham sab kuch achieve kare ham sath main bas yahi pray hai bhagwan ji se meri🫂🫂. main yahi chahti hun bhagwan ji se ki hamara jo ye bond hai vo aur zyada strong ho aur special ho jae ye bond hamara aise hi bas hamesha sath rahe ham aur aise hi bhaut sari memories create kare sath main ham🫂🫂"),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text("इस नए साल में.. जो तू चाहे वह तेरा हो, हर दिन ख़ूबसूरत और रातें रोशन हो, कामयाबी चूमते रहे तेरे कदम हर बार, नया साल मुबारक हो तूझे मेरे यार")
              ),
              Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan[800], // Background color
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Special_video()),
                        );},
                      child: Text("Next",style: TextStyle(color: Colors.white),)
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}