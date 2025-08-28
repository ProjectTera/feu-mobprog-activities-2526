import 'package:flutter/material.dart';

class ImageChanger extends StatefulWidget {
  const ImageChanger({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ImageChangerState();
  }

}

class _ImageChangerState extends State<ImageChanger> {
  String activeImage = 'assets/img/meme1.png';

  void imageFunction() {
    setState(() {
      activeImage = 'assets/img/meme2.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeImage,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: imageFunction,
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 28)
              ),
              //child: StyledText('Click Me!'),
              child: const Text('Click Me!'),
            ),
          ],
        );
  }
}