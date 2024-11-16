import 'package:flutter/material.dart';
import 'package:news_app2/models/Category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 90,
        width: 190,
        decoration: BoxDecoration(
            image:  DecorationImage(
                fit: BoxFit.fill, image: AssetImage(category.image)),
            borderRadius: BorderRadius.circular(10)),
        child:  Center(
            child: Text(
          category.categoryName,
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
