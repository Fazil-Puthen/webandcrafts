// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      sku: json['sku'] as String,
      productName: json['product_name'] as String,
      productImage: json['product_image'] as String,
      productRating: (json['product_rating'] as num).toInt(),
      actualPrice: json['actual_price'] as String,
      offerPrice: json['offer_price'] as String,
      discount: json['discount'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'sku': instance.sku,
      'product_name': instance.productName,
      'product_image': instance.productImage,
      'product_rating': instance.productRating,
      'actual_price': instance.actualPrice,
      'offer_price': instance.offerPrice,
      'discount': instance.discount,
    };
