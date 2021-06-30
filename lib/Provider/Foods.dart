import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'models.dart';

class Pizas with ChangeNotifier {
  List<Piza> _piza = [];

  List<Piza> get piza {
    return [..._piza];
  }

  Future<void> getPiza() async {
    List<Piza> loadedPiza = [];

    var url =
        Uri.parse('https://forkify-api.herokuapp.com/api/search?q=pizza#');
    var response = await http.get(url);
    var decodeData = json.decode(response.body);
    decodeData['recipes'].forEach((pizaData) {
      loadedPiza.add(Piza(
        recipe_id: pizaData['recipe_id'],
        title: (pizaData)['title'],
        social_rank: (pizaData)['social_rank'].toString(),
        image_url: (pizaData)['image_url'],
        publisher: (pizaData)['publisher'],
      ));
    });
    _piza = loadedPiza;
    notifyListeners();
  }
}

