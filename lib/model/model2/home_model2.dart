import 'package:mypcot/model/model2/banner_model2.dart';
import 'package:mypcot/model/model2/category_model2.dart';
import 'package:mypcot/model/model2/product_model2.dart';

class HomeData {
  final List<Banner> banners;
  final List<Product> bestSellers;
  final List<Category> categories;
  final List<Product> mostPopular;
  final String adBannerImageUrl;

  HomeData({
    required this.banners,
    required this.bestSellers,
    required this.categories,
    required this.mostPopular,
    required this.adBannerImageUrl,
  });

  factory HomeData.fromJson(List<dynamic> jsonData) {
    final data = jsonData.firstWhere((element) => element['type'] == 'banner_slider');
    final productsData = jsonData.where((element) => element['type'] == 'products').toList();
    final categoriesData = jsonData.firstWhere((element) => element['type'] == 'catagories');
    final adBannerData = jsonData.firstWhere((element) => element['type'] == 'banner_single');

    return HomeData(
      banners: (data['contents'] as List).map((i) => Banner.fromJson(i)).toList(),
      bestSellers: (productsData.firstWhere((element) => element['title'] == 'Best Sellers')['contents'] as List)
          .map((i) => Product.fromJson(i))
          .toList(),
      categories: (categoriesData['contents'] as List).map((i) => Category.fromJson(i)).toList(),
      mostPopular: (productsData.firstWhere((element) => element['title'] == 'Most Popular')['contents'] as List)
          .map((i) => Product.fromJson(i))
          .toList(),
      adBannerImageUrl: adBannerData['image_url'],
    );
  }
}