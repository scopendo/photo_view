import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view_example/screens/common/app_bar.dart';

class RotationExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExampleAppBarLayout(
      title: "Rotation Example",
      showGoBack: true,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Example using option enableRotation, just pinch an rotate",
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 300.0,
            child: ClipRect(
              child: PhotoView(
                imageProvider: const AssetImage("assets/large-image.jpg"),
                maxScale: PhotoViewComputedScale.covered,
                initialScale: PhotoViewComputedScale.contained * 0.8,
                enableRotation: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
