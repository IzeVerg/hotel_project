import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourist_input_card_model.freezed.dart';

@freezed
class TouristInputCardModel with _$TouristInputCardModel {
  factory TouristInputCardModel({
    @Default(TouristInputModel()) TouristInputModel name,
    @Default(TouristInputModel()) TouristInputModel surname,
    @Default(TouristInputModel()) TouristInputModel birthDate,
    @Default(TouristInputModel()) TouristInputModel citizenship,
    @Default(TouristInputModel()) TouristInputModel numberPassport,
    @Default(TouristInputModel()) TouristInputModel validityPeriodPassport,
  }) = _TouristInputCardModel;
}

@freezed
class TouristInputModel with _$TouristInputModel {
  const factory TouristInputModel({
    @Default('') String text,
    @Default(false) bool hasError,
  }) = _TouristInputModel;
}
