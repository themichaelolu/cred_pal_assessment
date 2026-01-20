import 'package:cred_pal_assessment/models/merchant.dart';
import 'package:cred_pal_assessment/models/product.dart';
import 'package:cred_pal_assessment/src/constants/app_assets.dart';
import 'package:cred_pal_assessment/src/constants/app_colors.dart';
import 'package:cred_pal_assessment/src/widgets/merchant_grid.dart';
import 'package:cred_pal_assessment/src/widgets/merchant_header_widget.dart';
import 'package:cred_pal_assessment/src/widgets/sliver_app_bar_widget.dart';
import 'package:cred_pal_assessment/src/widgets/sliver_product_list_widget.dart';
import 'package:cred_pal_assessment/src/widgets/sliver_search_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

final List<Product> products = [
  Product(
    title: "Nokia G20",
    price: "39,780",
    oldPrice: "88,000",
    image: Image.asset(AppAssets.nokiaG20Png),
    discount: Column(
      children: [
        Text(
          'Pay',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xffB3B3CC),
          ),
        ),
        Text(
          '40%',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
            color: Color(0xff3D5AFE),
          ),
        ),
      ],
    ),
  ),
  Product(
    title: "iPhone XS Max",
    price: "295,999",
    oldPrice: "315,000",
    discount: Image.asset(AppAssets.ogabassey1Png, height: 24, width: 24),
    image: Image.asset(AppAssets.xsPng, height: 96.h, width: 112.w),
  ),

  Product(
    title: "Anker Soundcore",
    price: "39,780",
    oldPrice: "88,000",
    image: Image.asset(AppAssets.speakerPng, height: 96.h, width: 112.w),
    discount: Image.asset(AppAssets.okayFonesPng),
  ),

  Product(
    title: "iPhone 12 Pro",
    price: "490,500",
    oldPrice: "515,000",
    image: Image.asset(AppAssets.iPhonePng, height: 96.h, width: 112.w),
    discount: Image.asset(AppAssets.imateStores1Png),
  ),
  Product(
    title: "iPhone 12 Pro",
    price: "490,500",
    oldPrice: "515,000",
    image: Image.asset(AppAssets.iPhonePng, height: 96.h, width: 112.w),
    discount: Image.asset(AppAssets.imateStores1Png),
  ),
  Product(
    title: "iPhone 12 Pro",
    price: "490,500",
    oldPrice: "515,000",
    image: Image.asset(AppAssets.iPhonePng, height: 96.h, width: 112.w),
    discount: Image.asset(AppAssets.imateStores1Png),
  ),
  Product(
    title: "iPhone 12 Pro",
    price: "490,500",
    oldPrice: "515,000",
    image: Image.asset(AppAssets.iPhonePng, height: 96.h, width: 112.w),
    discount: Image.asset(AppAssets.imateStores1Png),
  ),
  Product(
    title: "iPhone 12 Pro",
    price: "490,500",
    oldPrice: "515,000",
    image: Image.asset(AppAssets.iPhonePng, height: 96.h, width: 112.w),
    discount: Image.asset(AppAssets.imateStores1Png),
  ),
  Product(
    title: "iPhone 12 Pro",
    price: "490,500",
    oldPrice: "515,000",
    image: Image.asset(
      AppAssets.iPhonePng,
      height: 96.h,
      width: 112.w,
      fit: BoxFit.cover,
    ),
    discount: Image.asset(AppAssets.imateStores1Png),
  ),
];

final List<Merchant> merchantItem = [
  Merchant(name: "Justrite", svgAsset: AppAssets.justRiteSvg),
  Merchant(name: "Orile Restaurant", svgAsset: AppAssets.orileRestaurantSvg),
  Merchant(name: "Slot", svgAsset: AppAssets.slotSvg),
  Merchant(name: "Pointek", svgAsset: AppAssets.pointekSvg),
  Merchant(name: "OgaBassey", svgAsset: AppAssets.ogaBasseySvg),
  Merchant(name: "Casper", svgAsset: AppAssets.casperSvg),
  Merchant(name: "Dreamworks", svgAsset: AppAssets.dreamworksSvg),
  Merchant(name: "Hubmart", svgAsset: AppAssets.hubmartSvg),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBarWidget(),
            const SliverSearchBar(),
            const SliverProductList(),
            const SliverMerchantHeader(),
            const SliverMerchantGrid(),
          ],
        ),
      ),
    );
  }
}