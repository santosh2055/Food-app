import 'package:flutter/material.dart';
import 'package:food_api_integration/Provider/Foods.dart';
import 'package:provider/provider.dart';

class FoodGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<Pizas>(context, listen: false).getPiza();
    final pizaData = Provider.of<Pizas>(context);
    final pizas = pizaData.piza;
    return Padding(
      padding: const EdgeInsets.all(13),
      child: ListView.builder(
        itemCount: pizas.length,
        itemBuilder: (ctx, i) => Container(
          child: Column(
            children: [
              Text(pizas[i].title),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    pizas[i].image_url,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(pizas[i].publisher)
            ],
          ),
        ),
      ),
    );
  }
}
