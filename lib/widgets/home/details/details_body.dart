import 'package:app/constants.dart';
import 'package:app/models/product.dart';
import 'package:app/widgets/home/details/color_dot.dart';
import 'package:app/widgets/home/details/product_image.dart';
import 'package:flutter/material.dart';


class DetailBody extends StatefulWidget {
  final Product product;

  const DetailBody({super.key, required this.product});

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImages(
                  size: size,
                  image: widget.product.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillcolor: kTextLightColor,
                      isselected: true,
                    ),
                    ColorDot(
                      fillcolor: Colors.blue,
                      isselected: false,
                    ),
                    ColorDot(
                      fillcolor: Colors.red,
                      isselected: false,
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  widget.product.title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Text(
                'السعر: \$${widget.product.price}',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor),
              ),
              SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding / 2),
            child: Text(
              widget.product.description,
              style: TextStyle(color: Colors.white, fontSize: 19.0),
            ))
      ],
    );
  }
}
