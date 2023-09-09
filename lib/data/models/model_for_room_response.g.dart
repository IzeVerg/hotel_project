// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_for_room_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomsModel _$$_RoomsModelFromJson(Map<String, dynamic> json) =>
    _$_RoomsModel(
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => ModelForRoomResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomsModelToJson(_$_RoomsModel instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
    };

_$_ModelForRoomResponse _$$_ModelForRoomResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ModelForRoomResponse(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      peculiarities: (json['peculiarities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      priceForWhat: json['price_per'] as String,
      imagesAdress: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ModelForRoomResponseToJson(
        _$_ModelForRoomResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'peculiarities': instance.peculiarities,
      'price_per': instance.priceForWhat,
      'image_urls': instance.imagesAdress,
    };
