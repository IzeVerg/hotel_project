import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testovoe_zadanie_jun/domain/models/enum/tourist_info_field.dart';

import '../data/models/model_for_hotel_response.dart';
import '../data/models/model_for_reservation_response.dart';
import '../data/models/model_for_room_response.dart';
import '../data/models/tourist_input_card_model.dart';
import '../domain/models/enum/navigation.dart';
import '../domain/models/enum/status_downloading.dart';
import '../domain/service/hotel_service.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required HotelService service,
  })  : _service = service,
        super(const HomeState()) {
    on<_InitHotelData>(_initHotelData);
    on<_InitRoomData>(_initRoomData);
    on<_InitReservationData>(_initReservationData);
    on<_UserClickedButtonToHotel>(_userClickedButtonToHotel);
    on<_UserClickedButtonToRoom>(_userClickedButtonToRoom);
    on<_UserClickedButtonToReservation>(_userClickedButtonToReservation);
    on<_UserClickedButtonToPaid>(_userClickedButtonToPaid);
    on<_UserEnteredInfo>(_userEnteredInfo);
    on<_UserEnteredNumber>(_userEnteredNumber);
    on<_UserEnteredEmail>(_userEnteredEmail);
    on<_CheckTextFields>(_checkTextFields);
    on<_UserAddTourist>(_userAddTourist);
    on<_DeleteTourist>(_deleteTourist);
  }

  final HotelService _service;

  Future<void> _initHotelData(_InitHotelData event, Emitter emit) async {
    ModelForHotelResponse? model;
    try {
      emit(state.copyWith(status: StatusDownloading.loading));
      model = await _service.getHotel();
      emit(state.copyWith(status: StatusDownloading.loaded));
    } catch (e) {
      emit(state.copyWith(status: StatusDownloading.error));
    }
    emit(state.copyWith(modelHotel: model));
  }

  Future<void> _initRoomData(_InitRoomData event, Emitter emit) async {
    RoomsModel? model;
    try {
      emit(state.copyWith(status: StatusDownloading.loading));

      model = await _service.getRoom();

      emit(state.copyWith(status: StatusDownloading.loaded));
    } catch (e) {
      emit(state.copyWith(status: StatusDownloading.error));
    }
    emit(state.copyWith(modelsRoom: model));
  }

  Future<void> _initReservationData(_InitReservationData event, Emitter emit) async {
    ModelForReservationResponse? model;
    try {
      emit(state.copyWith(status: StatusDownloading.loading));
      model = await _service.getReservation();
      emit(state.copyWith(status: StatusDownloading.loaded));
    } catch (e) {
      emit(state.copyWith(status: StatusDownloading.error));
    }
    emit(state.copyWith(modelReservation: model));
  }

  void _userClickedButtonToHotel(_UserClickedButtonToHotel event, Emitter emit) {
    emit(state.copyWith(navigation: Navigation.navigateToHotel));
  }

  void _userClickedButtonToRoom(_UserClickedButtonToRoom event, Emitter emit) {
    emit(state.copyWith(navigation: Navigation.navigateToRoom));
  }

  void _userClickedButtonToReservation(_UserClickedButtonToReservation event, Emitter emit) {
    emit(state.copyWith(navigation: Navigation.navigateToReservation));
  }

  void _userClickedButtonToPaid(_UserClickedButtonToPaid event, Emitter emit) {
    emit(state.copyWith(navigation: Navigation.navigateToPaid));
  }

  void _userEnteredNumber(_UserEnteredNumber event, Emitter emit) {
    final TouristInputModel currentNumberFieldModel = state.numberFieldModel;

    emit(state.copyWith(numberFieldModel: currentNumberFieldModel.copyWith(text: event.value)));
  }

  void _userEnteredEmail(_UserEnteredEmail event, Emitter emit) {
    final TouristInputModel currentMailFieldModel = state.mailFieldModel;

    emit(state.copyWith(mailFieldModel: currentMailFieldModel.copyWith(text: event.value)));
  }

  void _userEnteredInfo(_UserEnteredInfo event, Emitter emit) {
    // create list with TouristInputCardModel, where give data from state
    final List<TouristInputCardModel> newInputCardsList = List.from(state.touristInputCards);
    // create currentTourist with index(special for particulars)
    TouristInputCardModel currentTourist = newInputCardsList[event.touristIndex];
    //create updatedTourist, where the data with the index defined after the field change will be placed
    TouristInputCardModel? updatedTourist;

    switch (event.fieldType) {
      case TouristInfoField.name:
        updatedTourist = currentTourist.copyWith(name: TouristInputModel(text: event.textValue));
        break;

      case TouristInfoField.surname:
        updatedTourist = currentTourist.copyWith(surname: TouristInputModel(text: event.textValue));
        break;

      case TouristInfoField.birthDate:
        updatedTourist = currentTourist.copyWith(birthDate: TouristInputModel(text: event.textValue));
        break;

      case TouristInfoField.citizenship:
        updatedTourist = currentTourist.copyWith(citizenship: TouristInputModel(text: event.textValue));
        break;

      case TouristInfoField.travelPassportNumber:
        updatedTourist = currentTourist.copyWith(numberPassport: TouristInputModel(text: event.textValue));
        break;

      case TouristInfoField.validityPeriod:
        updatedTourist = currentTourist.copyWith(validityPeriodPassport: TouristInputModel(text: event.textValue));
        break;
    }

    newInputCardsList[event.touristIndex] = updatedTourist;

    emit(state.copyWith(touristInputCards: newInputCardsList));
  }

  void _userAddTourist(_UserAddTourist _, Emitter emit) {
    final List<TouristInputCardModel> newInputCardsList = List.from(state.touristInputCards);

    newInputCardsList.add(TouristInputCardModel());

    emit(state.copyWith(touristInputCards: newInputCardsList));
  }

  void _deleteTourist(_DeleteTourist _, Emitter emit) {
    List<TouristInputCardModel> newInputCardsList = List.from(state.touristInputCards);

    newInputCardsList = [];

    emit(state.copyWith(touristInputCards: newInputCardsList));
  }

  void _checkTextFields(_CheckTextFields event, Emitter emit) {

    final List<TouristInputCardModel> newInputCardsList = List.from(state.touristInputCards);

    for (int index = 0; index < state.touristInputCards.length; index++) {
      TouristInputCardModel newCardModel = newInputCardsList[index];

      if (newCardModel.name.text.trim().isEmpty) {
        newCardModel = newCardModel.copyWith(name: newCardModel.name.copyWith(hasError: true));
      }

      if (newCardModel.surname.text.trim().isEmpty) {
        newCardModel = newCardModel.copyWith(surname: newCardModel.surname.copyWith(hasError: true));
      }

      if (newCardModel.birthDate.text.trim().isEmpty) {
        newCardModel = newCardModel.copyWith(birthDate: newCardModel.birthDate.copyWith(hasError: true));
      }

      if (newCardModel.citizenship.text.trim().isEmpty) {
        newCardModel = newCardModel.copyWith(citizenship: newCardModel.citizenship.copyWith(hasError: true));
      }

      if (newCardModel.numberPassport.text.trim().isEmpty) {
        newCardModel = newCardModel.copyWith(numberPassport: newCardModel.numberPassport.copyWith(hasError: true));
      }

      if (newCardModel.validityPeriodPassport.text.trim().isEmpty) {
        newCardModel =
            newCardModel.copyWith(validityPeriodPassport: newCardModel.validityPeriodPassport.copyWith(hasError: true));
      }

      newInputCardsList[index] = newCardModel;
    }

    if (state.numberFieldModel.text.trim().isEmpty) {
      emit(state.copyWith(numberFieldModel: state.numberFieldModel.copyWith(hasError: true)));
    }

    if (state.mailFieldModel.text.trim().isEmpty) {
      emit(state.copyWith(mailFieldModel: state.mailFieldModel.copyWith(hasError: true)));
    }

    emit(state.copyWith(touristInputCards: newInputCardsList));

    if (_areAllFieldsValid) {
      emit(state.copyWith(navigation: Navigation.navigateToPaid));
    }
  }

  bool get _areAllFieldsValid {
    if (state.numberFieldModel.hasError || state.mailFieldModel.hasError) {
      return false;
    }

    for (TouristInputCardModel inputCardModel in state.touristInputCards) {
      if (inputCardModel.name.hasError ||
          inputCardModel.surname.hasError ||
          inputCardModel.birthDate.hasError ||
          inputCardModel.citizenship.hasError ||
          inputCardModel.numberPassport.hasError ||
          inputCardModel.validityPeriodPassport.hasError) {
        return false;
      }
    }

    return true;
  }
}
