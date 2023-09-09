import 'package:dio/dio.dart';

import '../../data/models/model_for_hotel_response.dart';
import '../../data/models/model_for_reservation_response.dart';
import '../../data/models/model_for_room_response.dart';
import '../repository/repository.dart';

class HotelService {
  Future<ModelForHotelResponse?> getHotel() async {
    ModelForHotelResponse? modelHotel;
    try {
      final ApiClient client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
      modelHotel = await client.getHotel();
    } catch (e) {
      modelHotel = null;
    }
    return modelHotel;
  }

  Future<RoomsModel?> getRoom() async {
    RoomsModel? modelRoom;
    try {
      final ApiClient client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
      modelRoom = await client.getRoom();
    } catch (e) {
      modelRoom = null;
    }
    return modelRoom;
  }

  Future<ModelForReservationResponse?> getReservation() async {
    ModelForReservationResponse? modelReservation;
    try {
      final ApiClient client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
      modelReservation = await client.getReservation();
    } catch (e) {
      modelReservation = null;
    }
    return modelReservation;
  }
}
