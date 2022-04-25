import 'package:cart/cart_provider.dart';
import 'package:cart/product_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'flutter Demo',
          theme: ThemeData(
            primaryColor: Colors.pink,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.black),
              bodyText2: TextStyle(color: Colors.black),
              headline1: TextStyle(fontSize: 24),
            ),
          ),
          //home: CategoriesScreen(),
          routes: {
            '/': (context) => ProductListScreen(),
            //InfoPlantScrren.routeinfoplant: (context) => InfoPlantScrren(),
            //'/CategoryMealScrean': (context) => CategoryMeallScreen(),
          },
        );
      }),
    );
  }
}
