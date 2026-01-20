import 'package:cred_pal_assessment/src/features/home_screen.dart';
import 'package:cred_pal_assessment/src/widgets/product_card.dart';
import 'package:flutter/material.dart';

class SliverProductList extends StatelessWidget {
  const SliverProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final double cardWidth = MediaQuery.of(context).size.width * 0.44;

    return SliverToBoxAdapter(
      child: DecoratedBox(
        decoration: BoxDecoration(color: const Color(0xffF4F5FE)),
        child: SizedBox(
          height: 460,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 14),

            itemCount: products.length ~/ 2,
            itemBuilder: (context, columnIndex) {
              int topIndex = columnIndex * 2;
              int bottomIndex = columnIndex * 2 + 1;
              final product = products[topIndex];
              return SizedBox(
                width: cardWidth,
                child: Column(
                  children: [
                    Expanded(
                      child: ProductCard(
                        title: product.title,
                        price: product.price,
                        image: product.image,
                        oldPrice: product.oldPrice,
                        discount: product.discount,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: bottomIndex < products.length
                          ? ProductCard(
                              title: products[bottomIndex].title,
                              price: products[bottomIndex].price,
                              image: products[bottomIndex].image,
                              oldPrice: products[bottomIndex].oldPrice,
                              discount: products[bottomIndex].discount,
                            )
                          : SizedBox.shrink(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
