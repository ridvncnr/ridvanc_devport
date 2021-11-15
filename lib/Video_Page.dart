import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';



class Video_Page extends StatelessWidget {
  const Video_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("SKI HIGH",
              style: TextStyle(
                  color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.w400),
            ),
            Icon(FontAwesomeIcons.planeDeparture,
                color: Colors.blue)
          ],
        ),
        backgroundColor: Colors.black26,
      ),
      body:
      ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'videos/snowboarding.mp4',
            ),
            looping: false,
            autoplay: false,
          ),
        ],
      ),


    );
  }
}

class VideoItems extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool? looping;
  final bool? autoplay;


  VideoItems({
    required this.videoPlayerController,
    this.looping, this.autoplay,
    Key? key,
  }) : super(key: key);

  @override
  _VideoItemsState createState() => _VideoItemsState();
}

class _VideoItemsState extends State<VideoItems> {
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio:5/8,
      autoInitialize: true,
      autoPlay: widget.autoplay!,
      looping: widget.looping!,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController!,
      ),
    );
  }

}