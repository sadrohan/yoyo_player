import 'package:flutter/material.dart';
import 'package:yoyo_player/yoyo_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool fullscreen = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: fullscreen == false
            ? AppBar(
                backgroundColor: Colors.blue,
                title: Image(
                  image: AssetImage('image/yoyo_logo.png'),
                  fit: BoxFit.fitHeight,
                  height: 50,
                ),
                centerTitle: true,
              )
            : null,
        body: Column(
          children: [
            YoYoPlayer(
              aspectRatio: 16 / 9,
              url: "https://v.pinimg.com/videos/mc/hls/ad/a8/22/ada8227481f144e9f26dcd5949e641a0.m3u8",
              videoStyle: VideoStyle(),
              videoLoadingStyle: VideoLoadingStyle(
                loading: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('image/yoyo_logo.png'),
                        fit: BoxFit.fitHeight,
                        height: 50,
                      ),
                      Text("Loading video"),
                    ],
                  ),
                ),
              ),
              onFullScreen: (t) {
                setState(() {
                  fullscreen = t;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
