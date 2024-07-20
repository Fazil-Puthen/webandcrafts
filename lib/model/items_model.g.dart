// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      type: json['type'] as String,
      title: json['title'] as String,
      imageUrl: json['image_url'] as String?,
      bannerContents: (json['banner_contents'] as List<dynamic>?)
          ?.map((e) => BannerSliderContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'banner_contents': instance.bannerContents,
      'products': instance.products,
      'categories': instance.categories,
      'id': instance.id,
    };
