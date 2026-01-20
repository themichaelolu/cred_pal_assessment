import 'package:cred_pal_assessment/src/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  final String title, price, oldPrice;
  final Widget? discount;
  final Widget? image;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.oldPrice,
    this.discount,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth < 360;
    final isMediumScreen = screenWidth < 600;

    // Responsive sizing
    final cardWidth = isSmallScreen ? 170.w : 190.w;
    final rightMargin = isSmallScreen ? 8.0 : 12.0;
    final horizontalPadding = isSmallScreen ? 9.0 : 11.0;
    final verticalPadding = isSmallScreen ? 5.0 : 7.0;
    final titleFontSize = isSmallScreen ? 11.sp : 13.sp;
    final priceFontSize = isSmallScreen ? 9.5.sp : 12.sp;
    final oldPriceFontSize = isSmallScreen ? 7.5.sp : 10.sp;
    final discountPadding = isSmallScreen ? 4.0 : 6.0;
    final priceSpacing = isSmallScreen ? 2.0 : 6.0;

    return Container(
      width: cardWidth,
      margin: EdgeInsets.only(right: rightMargin),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Area
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                    ),
                    child: image,
                  ),
                ),
                if (discount != null)
                  Positioned(
                    top: isSmallScreen ? 4.w : 6.w,
                    left: isSmallScreen ? 5.w : 7.w,
                    child: Container(
                      height: 50.h,
                      width: 50.w,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: discount),
                    ),
                  ),
              ],
            ),
          ),
          // Content Area
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: titleFontSize,
                      color: Color(0xff1A1A1A),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: isSmallScreen ? 2 : 4),
                  Row(
                    spacing: priceSpacing,
                    children: [
                      Expanded(
                        child: Text(
                          "₦ $price",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: priceFontSize,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "₦ $oldPrice",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: oldPriceFontSize,
                            color: Color(0xffB3B3CC),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
