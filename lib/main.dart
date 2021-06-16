import 'package:flutter/material.dart';
import 'package:food_api_integration/Provider/Foods.dart';
import 'package:food_api_integration/Screen/food_DetailsScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Pizas())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DetailScreen(),
      ),
    );
  }
}
