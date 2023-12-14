import 'package:flutter/material.dart';
import 'package:for_my_special_one/screens/video_player.dart';
import 'package:video_player/video_player.dart';

class Special_video extends StatefulWidget {
  const Special_video({Key? key}) : super(key: key);

  @override
  State<Special_video> createState() => _Special_videoState();
}

class _Special_videoState extends State<Special_video> {
  final asset="https://res.cloudinary.com/dnu3bviq2/video/upload/v1702574502/df6hdnbjsx4aylpxfova.mp4";
  late VideoPlayerController controller;
  @override
  void initState(){
    super.initState();
    controller=VideoPlayerController.asset(asset)
               ..addListener(()=>setState(() {}))
               ..setLooping(true)
               ..initialize().then((_) => controller.play());
  }
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    final isMuted=controller.value.volume==0;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 800,
          width: 1500,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('https://res.cloudinary.com/dnu3bviq2/image/upload/v1702574352/brutiijhl2bh6pliqhwb.png'),
                fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("A glimpse of 2023🫂🫂💖",style: TextStyle(fontSize: 32,color: Colors.pink[700])),
              Container(
                height: 400,
                width: 200,
                child: VideoPLayerWidget(controller: controller),
              ),
              SizedBox(height: 32),
              if(controller!=null && controller.value.isInitialized)
                CircleAvatar(
                  radius: 30,
                backgroundColor: Colors.red,
                child: IconButton(
                  icon: Icon(
                    isMuted? Icons.volume_mute:Icons.volume_up,
                    color: Colors.white,
                  ),
                  onPressed: ()=>controller.setVolume(isMuted?1:0),
                ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
