// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_for_room_response.freezed.dart';
part 'model_for_room_response.g.dart';

@freezed
class RoomsModel with _$RoomsModel {
  const factory RoomsModel({
    required List<ModelForRoomResponse> rooms,
  }) = _RoomsModel;

  factory RoomsModel.fromJson(Map<String, dynamic> json) => _$RoomsModelFromJson(json);
}

@freezed
class ModelForRoomResponse with _$ModelForRoomResponse {
  const factory ModelForRoomResponse({
    required int id,
    required String name,
    required int price,
    required List<String> peculiarities,
    @JsonKey(name: 'price_per') required String priceForWhat,
    @JsonKey(name: 'image_urls') required List<String> imagesAdress,
  }) = _ModelForRoomResponse;

  factory ModelForRoomResponse.fromJson(Map<String, dynamic> json) => _$ModelForRoomResponseFromJson(json);
}
