import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../data/models/model_for_hotel_response.dart';
import '../../data/models/model_for_reservation_response.dart';
import '../../data/models/model_for_room_response.dart';

part 'repository.g.dart';

class ApisHotel {
  static const String hotel = '/35e0d18e-2521-4f1b-a575-f0fe366f66e3';
  static const String room = '/f9a38183-6f95-43aa-853a-9c83cbb05ecd';
  static const String reservation = '/e8868481-743f-4eb2-a0d7-2bc4012275c8';
}

@RestApi(baseUrl: "https://run.mocky.io/v3")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(ApisHotel.hotel)
  Future<ModelForHotelResponse> getHotel();
  @GET(ApisHotel.room)
  Future<RoomsModel> getRoom();
  @GET(ApisHotel.reservation)
  Future<ModelForReservationResponse> getReservation();
}
