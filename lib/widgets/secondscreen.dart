import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_list_view.dart';

import '../models/category_model.dart';
class SecondScreen extends StatelessWidget {
  final CategoryModel category;

  const SecondScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.categoryName),

      ),
      body:
      CustomScrollView(
        slivers: [
          news_list_view(categoryName: category.categoryName),
        ],
      )

    );
  }
}