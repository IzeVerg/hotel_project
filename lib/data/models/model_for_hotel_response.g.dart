// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_for_hotel_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AboutTheHotel _$$_AboutTheHotelFromJson(Map<String, dynamic> json) =>
    _$_AboutTheHotel(
      description: json['description'] as String,
      peculiarities: (json['peculiarities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_AboutTheHotelToJson(_$_AboutTheHotel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'peculiarities': instance.peculiarities,
    };

_$_ModelForHotelResponse _$$_ModelForHotelResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ModelForHotelResponse(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['adress'] as String,
      minimalPrice: json['minimal_price'] as int,
      priceForIt: json['price_for_it'] as String,
      rating: json['rating'] as int,
      ratingName: json['rating_name'] as String,
      imagesAdress: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      hotelInfo: AboutTheHotel.fromJson(
          json['about_the_hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ModelForHotelResponseToJson(
        _$_ModelForHotelResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adress': instance.address,
      'minimal_price': instance.minimalPrice,
      'price_for_it': instance.priceForIt,
      'rating': instance.rating,
      'rating_name': instance.ratingName,
      'image_urls': instance.imagesAdress,
      'about_the_hotel': instance.hotelInfo,
    };
