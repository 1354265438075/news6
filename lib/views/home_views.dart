import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_card.dart';
import 'package:newsapp/widgets/category_list_view.dart';
import 'package:newsapp/widgets/news_list_view.dart';
import 'package:newsapp/widgets/news_tile.dart';

class HOMEVIEW extends StatelessWidget {
  const HOMEVIEW({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News", style: TextStyle(color: Colors.black)),
            Text("Tile", style: TextStyle(color: Colors.blue)),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(child: Category_list_view()),
          SliverToBoxAdapter(child: SizedBox(height: 5)),
           news_list_view(categoryName: "Science"),
        ],
      ),
    );
  }
}