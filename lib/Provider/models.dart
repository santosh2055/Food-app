import 'package:flutter/material.dart';


class Piza  with ChangeNotifier{
  final String recipe_id;
  final String title;
  final String image_url;
  final String social_rank;
  final String publisher;

  Piza({
    required this.recipe_id,
    required this.title,
    required this.image_url,
    required this.social_rank,
    required this.publisher,
  });
}
