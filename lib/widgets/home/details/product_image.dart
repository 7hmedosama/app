import 'package:flutter/material.dart';


class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: kDefaultFontSize,
      ),
      height: widget.size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: widget.size.width * 0.7,
            width: widget.size.width * 0.7,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(
            widget.image,
            height: widget.size.width * .75,
            width: widget.size.width * .75,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
