// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_for_reservation_response.freezed.dart';
part 'model_for_reservation_response.g.dart';

@freezed
class ModelForReservationResponse with _$ModelForReservationResponse {
  const factory ModelForReservationResponse({
    required int id,
    @JsonKey(name: 'hotel_name') required String name,
    @JsonKey(name: 'hotel_adress') required String address,
    @JsonKey(name: 'horating') required int rate,
    @JsonKey(name: 'rating_name') required String ratingString,
    @JsonKey(name: 'departure') required String fromCountry,
    @JsonKey(name: 'arrival_country') required String country,
    @JsonKey(name: 'tour_date_start') required String dateStart,
    @JsonKey(name: 'tour_date_stop') required String dateEnd,
    @JsonKey(name: 'number_of_nights') required int nights,
    @JsonKey(name: 'room') required String roomDescription,
    required String nutrition,
    @JsonKey(name: 'tour_price') required int tourPrice,
    @JsonKey(name: 'fuel_charge') required int fuel,
    @JsonKey(name: 'service_charge') required int service,
  }) = _ModelForReservationResponse;

  factory ModelForReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelForReservationResponseFromJson(json);
}
