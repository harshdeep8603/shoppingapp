import 'package:first_app/Pages/home_detail_page.dart';
import 'package:first_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:first_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../main.dart';
import '../home_page.dart';
import 'catalog_image.dart';
class CatalogList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context,index){
          final catalog = CatalogModel.items[index];
          return CatalogItem(catalog: catalog);
        }
    );
  }
}

class catalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context,index){
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context)=>HomeDetailPage(
                catalog :catalog, key: null,
              ),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(
                image: catalog.image,
              ),
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    catalog.name.text.lg.color(context.theme.cardColor).bold.make(),
                    catalog.desc.text.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.zero,
                      children: [
                        "\$${catalog.price}".text.bold.xl.make(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                context.theme.cardColor,
                              ),
                              shape: MaterialStateProperty.all(
                                const StadiumBorder(),
                              )),
                          child:"Add to cart".text.make(),
                        )
                      ],
                    ).pOnly(right: 8.0)
                  ],
                ))
          ],
        )
    ).color(context.cardColor).roundedLg.square(150).make().py16(); //py is used for vertical padding
  }
}








