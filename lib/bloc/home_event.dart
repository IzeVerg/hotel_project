part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initHotelData() = _InitHotelData;

  const factory HomeEvent.initRoomData() = _InitRoomData;

  const factory HomeEvent.initReservationData() = _InitReservationData;

  const factory HomeEvent.userClickedButtonToHotel() = _UserClickedButtonToHotel;

  const factory HomeEvent.userClickedButtonToRoom() = _UserClickedButtonToRoom;

  const factory HomeEvent.userClickedButtonToReservation() = _UserClickedButtonToReservation;

  const factory HomeEvent.userClickedButtonToPaid() = _UserClickedButtonToPaid;

  const factory HomeEvent.userEnteredInfo({
    @Default('') String textValue,
    @Default(0) int touristIndex,
    @Default(TouristInfoField.name) TouristInfoField fieldType,
  }) = _UserEnteredInfo;

  const factory HomeEvent.userEnteredNumber({
    @Default('') String value,
  }) = _UserEnteredNumber;

  const factory HomeEvent.userEnteredEmail({
    @Default('') String value,
  }) = _UserEnteredEmail;

  const factory HomeEvent.userAddTourist() = _UserAddTourist;

  const factory HomeEvent.deleteTourist() = _DeleteTourist;

  const factory HomeEvent.checkTextFields() = _CheckTextFields;
}
