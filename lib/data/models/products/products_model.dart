import 'package:json_annotation/json_annotation.dart';

part 'products_model.g.dart';

@JsonSerializable()
class ProductsResponse {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  ProductsResponse({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductsResponseToJson(this);
}

@JsonSerializable()
class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  factory Rating.fromJson(Map<String, dynamic> json) {
    return _$RatingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RatingToJson(this);
}
