import 'package:cred_pal_assessment/src/features/home_screen.dart';
import 'package:cred_pal_assessment/src/widgets/merchant_item.dart';
import 'package:flutter/material.dart';

class SliverMerchantGrid extends StatelessWidget {
  const SliverMerchantGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        delegate: SliverChildListDelegate(
          merchantItem.map((merchant) {
            return MerchantItem(
              label: merchant.name,
              svgAsset: merchant.svgAsset,
            );
          }).toList(),
        ),
      ),
    );
  }
}
