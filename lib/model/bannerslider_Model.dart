import 'package:json_annotation/json_annotation.dart';

part 'bannerslider_Model.g.dart';

@JsonSerializable()
class BannerSliderContent {
  final String title;
  final String imageUrl;

  BannerSliderContent({
    required this.title,
    required this.imageUrl,
  });

  factory BannerSliderContent.fromJson(Map<String, dynamic> json) => _$BannerSliderContentFromJson(json);
  Map<String, dynamic> toJson() => _$BannerSliderContentToJson(this);
}
