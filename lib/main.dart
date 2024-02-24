import 'package:first_app/utils/routes.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Pages/cart_page.dart';
import 'Pages/home_page.dart';
import 'Pages/login_page.dart';
import 'core/store.dart';
void main()
{
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    // int years = 4;
    // String name = "Harshdeep8603";
    // double pi = 3.14;
    // bool isMale = true;
    // num temp = 30.5;
    //
    // var day ="Tuesday";
    // const pi = 3.14;   //whose value cannot be changed
    // final  //we can add into it

    return MaterialApp(
      // home:HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.darkTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context)=> HomePage(),
        MyRoutes.homeRoute: (context)=> HomePage(),
        MyRoutes.loginRoute: (context)=> LoginPage(),
        MyRoutes.cartRoute: (context)=> CartPage(),
      },
    );
  }

  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBluishColor = const Color(0xff403b58);


// bringVegetable({@required bool Bag,int rupees=100}){
//   //Take cycle
//   //Goto sec 16
//
// }  //Functions
}

