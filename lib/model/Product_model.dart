import 'package:json_annotation/json_annotation.dart';

part 'Product_model.g.dart';

@JsonSerializable()
class Product {
  final String sku;
  @JsonKey(name: 'product_name')
  final String productName;
  @JsonKey(name: 'product_image')
  final String productImage;
  @JsonKey(name: 'product_rating')
  final int productRating;
  @JsonKey(name: 'actual_price')
  final String actualPrice;
  @JsonKey(name: 'offer_price')
  final String offerPrice;
  final String discount;

  Product({
    required this.sku,
    required this.productName,
    required this.productImage,
    required this.productRating,
    required this.actualPrice,
    required this.offerPrice,
    required this.discount,
  });

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
