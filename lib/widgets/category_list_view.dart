import 'package:flutter/material.dart';
import 'package:newsapp/service/NewsService.dart';
import 'package:newsapp/widgets/category_card.dart';
import 'package:newsapp/widgets/secondscreen.dart';

import '../models/category_model.dart';

class Category_list_view extends StatelessWidget {
  const Category_list_view({Key? key}) : super(key: key);

  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/business.jpg", categoryName: "Business"),
    CategoryModel(image: "assets/entertainment.jpg", categoryName: "Entertainment"),
    CategoryModel(image: "assets/health3.jpg", categoryName: "Health"),
    CategoryModel(image: "assets/science.jpg", categoryName: "Science"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: InkWell(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to the second screen here
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                      category: categories[index],
                    ),
                  ),
                );
              },
              child: CategoryCards(category: categories[index]),
            );
          },
        ),
      ),
    );
  }
}