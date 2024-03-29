import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:first_app/main.dart';
class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children :[
        "Catalog App".text.xl5.bold.color(MyApp.creamColor).make(),//xl5 is used for changing the size
        "Trending Products".text.xl2.color(MyApp.creamColor).make(),//xl5 is used for changing the size
      ],
    );
  }
}