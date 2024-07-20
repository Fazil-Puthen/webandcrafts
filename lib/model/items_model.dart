import 'package:json_annotation/json_annotation.dart';
import 'bannerslider_Model.dart'; // Adjust import path as necessary
import 'Product_model.dart'; // Adjust import path as necessary
import 'category_model.dart'; // Adjust import path as necessary

part 'items_model.g.dart';

@JsonSerializable()
class Item {
  final String type;
  final String title;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'banner_contents')
  final List<BannerSliderContent>? bannerContents;
  final List<Product>? products;
  final List<Category>? categories;
  final String id;

  Item({
    required this.type,
    required this.title,
    this.imageUrl,
    this.bannerContents,
    this.products,
    this.categories,
    required this.id,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
