import 'package:flutter/material.dart';
import 'package:pics/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  const ImageList({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return buildImage(images[index]);
        });
  }

  Widget buildImage(ImageModel image) {
    return Container(
      child: Column(
        children: [
          Image.network(image.url),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(image.title),
          ),
        ],
      ),
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
    );
  }
}
