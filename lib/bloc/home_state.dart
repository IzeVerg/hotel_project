part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(StatusDownloading.initial) StatusDownloading status,
    @Default(Navigation.navigateToHotel) Navigation navigation,
    @Default(TouristInputModel()) TouristInputModel numberFieldModel,
    @Default(TouristInputModel()) TouristInputModel mailFieldModel,
    @Default(<TouristInputCardModel>[]) List<TouristInputCardModel> touristInputCards,
    ModelForHotelResponse? modelHotel,
    RoomsModel? modelsRoom,
    ModelForReservationResponse? modelReservation,
  }) = _HomeState;
}
