import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  // CategoryItem({super.key});
  CategoryModel categoryModel;
  int index;

  CategoryItem(this.categoryModel, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: const Radius.circular(25),
          topLeft: const Radius.circular(25),
          bottomLeft: index.isEven ? const Radius.circular(25) : Radius.zero,
          bottomRight: index.isOdd ? const Radius.circular(25) : Radius.zero,
        ),
        color: categoryModel.color,
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(categoryModel.image)),
          Text(
            categoryModel.name,
            style: GoogleFonts.elMessiri(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
