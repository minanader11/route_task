
import 'package:flutter/material.dart';
import 'package:route_task/domain/entities/ProductsREsponseEntity.dart';
import 'package:route_task/presentation/home/view/widgets/productItem.dart';

class ProductsGridView extends StatelessWidget {
  ProductsGridView({required this.products});

  List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 16),
      itemBuilder: (context, index) =>
          InkWell(child: ProductItem(productEntity: products[index])),
    );
  }
}
