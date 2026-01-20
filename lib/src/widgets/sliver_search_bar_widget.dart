import 'package:cred_pal_assessment/src/constants/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SliverSearchBar extends StatelessWidget {
  const SliverSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for products or stores",
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  hintStyle: TextStyle(
                    color: Color(0xFF9494B8),
                    fontSize: 12.sp,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF5F6F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              height: 45.h,
              width: 45.w,
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.w),
              decoration: BoxDecoration(
                color: const Color(0xffF4F5FE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(AppAssets.scanSvg),
            ),
          ],
        ),
      ),
    );
  }
}