import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:first_app/core/store.dart';
import 'package:first_app/main.dart';
import 'package:first_app/utils/routes.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:first_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'home_widgets/catalog_header.dart';
import 'home_widgets/catalog_list.dart';

class HomePage extends StatelessWidget {
  final int years = 4;
  final String name = "Harsh-deep";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _cart =(VxState.store as MyStore).cart;
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
        backgroundColor: context.canvasColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context,MyRoutes.cartRoute),
          backgroundColor: MyTheme.darkBluishColor,
          child:const Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ).badge(color: Vx.red500,size: 20),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children :[
                CatalogHeader(),
                if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  const CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
    // backgroundColor: Colors.white,
    // elevation: 0.0,
    // iconTheme: IconThemeData(color: Colors.black),//head




    // itemBuilder: ,
    //   child: Container(
    //     // child:Text("Welcome to $years years of B-TECH by $name"),
    //     child: Text("Hello! How are you $name"),
    //   ),

    // ),
    // for menu bar
    // );
  }
}




