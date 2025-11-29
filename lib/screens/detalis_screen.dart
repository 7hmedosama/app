import 'package:app/constants.dart';
import 'package:app/models/product.dart';
import 'package:app/widgets/home/details/details_body.dart';
import 'package:flutter/material.dart';


class Details extends StatefulWidget {
  final Product product;

  const Details({super.key, required this.product}); 
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
 // ✅ صححنا هنا
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailBody(product: widget.product), // ✅ مررنا القيمة
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
      ),
      title: const Text(
        "رجوع",
        style: TextStyle(color: kPrimaryColor),
      ),
    );
  }
}
