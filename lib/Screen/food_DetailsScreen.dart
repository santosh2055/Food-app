import 'package:flutter/material.dart';
import 'package:food_api_integration/widget/foodgridView.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('data'),
        ),
      ),
      body: FoodGridView(),
    );
  }
}
