import 'package:json_annotation/json_annotation.dart';
import 'items_model.dart'; // Adjust import path as necessary

part 'home_model.g.dart';

@JsonSerializable()
class HomeData {
  final List<Item> items;

  HomeData({required this.items});

  factory HomeData.fromJson(Map<String, dynamic> json) => _$HomeDataFromJson(json);
  Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}
