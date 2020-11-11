import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(ideas());

class ideas extends StatefulWidget {
  @override
  VideoDemoState createState() => VideoDemoState();
}

class VideoDemoState extends State<ideas> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Context Idea"),
            centerTitle: true,
          ),
          body: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                const Divider(
                  height: 20.0,
                ),
                FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Center(
                        child: AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
                const Divider(
                  height: 8.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                    });
                  },
                  child: Icon(_controller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow),
                ),
                const Divider(
                  height: 40.0,
                ),
                Container(
                  transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                  color: Colors.blue[50],
                  padding: EdgeInsets.fromLTRB(15, 5, 5, 10),
                  child: Text(
                    'The Big Idea behind Think-Grow is to make reading and learning this is done using our parenting application. uses data-driven science to help women conceive, have healthier pregnancies about a wide range of topics simpler,easier and more fun. Think-Grow mixes highly infor about ideas, contribution and food chart and payment track recommendations and advice.',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
