// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_for_reservation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelForReservationResponse _$$_ModelForReservationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ModelForReservationResponse(
      id: json['id'] as int,
      name: json['hotel_name'] as String,
      address: json['hotel_adress'] as String,
      rate: json['horating'] as int,
      ratingString: json['rating_name'] as String,
      fromCountry: json['departure'] as String,
      country: json['arrival_country'] as String,
      dateStart: json['tour_date_start'] as String,
      dateEnd: json['tour_date_stop'] as String,
      nights: json['number_of_nights'] as int,
      roomDescription: json['room'] as String,
      nutrition: json['nutrition'] as String,
      tourPrice: json['tour_price'] as int,
      fuel: json['fuel_charge'] as int,
      service: json['service_charge'] as int,
    );

Map<String, dynamic> _$$_ModelForReservationResponseToJson(
        _$_ModelForReservationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_name': instance.name,
      'hotel_adress': instance.address,
      'horating': instance.rate,
      'rating_name': instance.ratingString,
      'departure': instance.fromCountry,
      'arrival_country': instance.country,
      'tour_date_start': instance.dateStart,
      'tour_date_stop': instance.dateEnd,
      'number_of_nights': instance.nights,
      'room': instance.roomDescription,
      'nutrition': instance.nutrition,
      'tour_price': instance.tourPrice,
      'fuel_charge': instance.fuel,
      'service_charge': instance.service,
    };
