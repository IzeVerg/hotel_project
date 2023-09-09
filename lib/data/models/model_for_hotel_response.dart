// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_for_hotel_response.freezed.dart';
part 'model_for_hotel_response.g.dart';

@freezed
class AboutTheHotel with _$AboutTheHotel {
  const factory AboutTheHotel({
    required String description,
    required List<String> peculiarities,
  }) = _AboutTheHotel;

  factory AboutTheHotel.fromJson(Map<String, dynamic> json) => _$AboutTheHotelFromJson(json);
}

@freezed
class ModelForHotelResponse with _$ModelForHotelResponse {
  const factory ModelForHotelResponse({
    required int id,
    required String name,
    @JsonKey(name: 'adress') required String address,
    @JsonKey(name: 'minimal_price') required int minimalPrice,
    @JsonKey(name: 'price_for_it') required String priceForIt,
    required int rating,
    @JsonKey(name: 'rating_name') required String ratingName,
    @JsonKey(name: 'image_urls') required List<String> imagesAdress,
    @JsonKey(name: 'about_the_hotel') required AboutTheHotel hotelInfo,
  }) = _ModelForHotelResponse;

  factory ModelForHotelResponse.fromJson(Map<String, dynamic> json) => _$ModelForHotelResponseFromJson(json);
}
