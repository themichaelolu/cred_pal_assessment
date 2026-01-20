import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverMerchantHeader extends StatelessWidget {
  const SliverMerchantHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Featured Merchants",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E3E5C),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "View all",
                style: TextStyle(color: Color(0xFF3D5AFE)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
