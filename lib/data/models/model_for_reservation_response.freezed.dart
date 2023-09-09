// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_for_reservation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelForReservationResponse _$ModelForReservationResponseFromJson(
    Map<String, dynamic> json) {
  return _ModelForReservationResponse.fromJson(json);
}

/// @nodoc
mixin _$ModelForReservationResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_adress')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'horating')
  int get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingString => throw _privateConstructorUsedError;
  @JsonKey(name: 'departure')
  String get fromCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrival_country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_start')
  String get dateStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_stop')
  String get dateEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_nights')
  int get nights => throw _privateConstructorUsedError;
  @JsonKey(name: 'room')
  String get roomDescription => throw _privateConstructorUsedError;
  String get nutrition => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_price')
  int get tourPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'fuel_charge')
  int get fuel => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_charge')
  int get service => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelForReservationResponseCopyWith<ModelForReservationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelForReservationResponseCopyWith<$Res> {
  factory $ModelForReservationResponseCopyWith(
          ModelForReservationResponse value,
          $Res Function(ModelForReservationResponse) then) =
      _$ModelForReservationResponseCopyWithImpl<$Res,
          ModelForReservationResponse>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hotel_name') String name,
      @JsonKey(name: 'hotel_adress') String address,
      @JsonKey(name: 'horating') int rate,
      @JsonKey(name: 'rating_name') String ratingString,
      @JsonKey(name: 'departure') String fromCountry,
      @JsonKey(name: 'arrival_country') String country,
      @JsonKey(name: 'tour_date_start') String dateStart,
      @JsonKey(name: 'tour_date_stop') String dateEnd,
      @JsonKey(name: 'number_of_nights') int nights,
      @JsonKey(name: 'room') String roomDescription,
      String nutrition,
      @JsonKey(name: 'tour_price') int tourPrice,
      @JsonKey(name: 'fuel_charge') int fuel,
      @JsonKey(name: 'service_charge') int service});
}

/// @nodoc
class _$ModelForReservationResponseCopyWithImpl<$Res,
        $Val extends ModelForReservationResponse>
    implements $ModelForReservationResponseCopyWith<$Res> {
  _$ModelForReservationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? rate = null,
    Object? ratingString = null,
    Object? fromCountry = null,
    Object? country = null,
    Object? dateStart = null,
    Object? dateEnd = null,
    Object? nights = null,
    Object? roomDescription = null,
    Object? nutrition = null,
    Object? tourPrice = null,
    Object? fuel = null,
    Object? service = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      ratingString: null == ratingString
          ? _value.ratingString
          : ratingString // ignore: cast_nullable_to_non_nullable
              as String,
      fromCountry: null == fromCountry
          ? _value.fromCountry
          : fromCountry // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      dateStart: null == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as String,
      dateEnd: null == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as String,
      nights: null == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int,
      roomDescription: null == roomDescription
          ? _value.roomDescription
          : roomDescription // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      tourPrice: null == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as int,
      fuel: null == fuel
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as int,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelForReservationResponseCopyWith<$Res>
    implements $ModelForReservationResponseCopyWith<$Res> {
  factory _$$_ModelForReservationResponseCopyWith(
          _$_ModelForReservationResponse value,
          $Res Function(_$_ModelForReservationResponse) then) =
      __$$_ModelForReservationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hotel_name') String name,
      @JsonKey(name: 'hotel_adress') String address,
      @JsonKey(name: 'horating') int rate,
      @JsonKey(name: 'rating_name') String ratingString,
      @JsonKey(name: 'departure') String fromCountry,
      @JsonKey(name: 'arrival_country') String country,
      @JsonKey(name: 'tour_date_start') String dateStart,
      @JsonKey(name: 'tour_date_stop') String dateEnd,
      @JsonKey(name: 'number_of_nights') int nights,
      @JsonKey(name: 'room') String roomDescription,
      String nutrition,
      @JsonKey(name: 'tour_price') int tourPrice,
      @JsonKey(name: 'fuel_charge') int fuel,
      @JsonKey(name: 'service_charge') int service});
}

/// @nodoc
class __$$_ModelForReservationResponseCopyWithImpl<$Res>
    extends _$ModelForReservationResponseCopyWithImpl<$Res,
        _$_ModelForReservationResponse>
    implements _$$_ModelForReservationResponseCopyWith<$Res> {
  __$$_ModelForReservationResponseCopyWithImpl(
      _$_ModelForReservationResponse _value,
      $Res Function(_$_ModelForReservationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? rate = null,
    Object? ratingString = null,
    Object? fromCountry = null,
    Object? country = null,
    Object? dateStart = null,
    Object? dateEnd = null,
    Object? nights = null,
    Object? roomDescription = null,
    Object? nutrition = null,
    Object? tourPrice = null,
    Object? fuel = null,
    Object? service = null,
  }) {
    return _then(_$_ModelForReservationResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      ratingString: null == ratingString
          ? _value.ratingString
          : ratingString // ignore: cast_nullable_to_non_nullable
              as String,
      fromCountry: null == fromCountry
          ? _value.fromCountry
          : fromCountry // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      dateStart: null == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as String,
      dateEnd: null == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as String,
      nights: null == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int,
      roomDescription: null == roomDescription
          ? _value.roomDescription
          : roomDescription // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      tourPrice: null == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as int,
      fuel: null == fuel
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as int,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelForReservationResponse implements _ModelForReservationResponse {
  const _$_ModelForReservationResponse(
      {required this.id,
      @JsonKey(name: 'hotel_name') required this.name,
      @JsonKey(name: 'hotel_adress') required this.address,
      @JsonKey(name: 'horating') required this.rate,
      @JsonKey(name: 'rating_name') required this.ratingString,
      @JsonKey(name: 'departure') required this.fromCountry,
      @JsonKey(name: 'arrival_country') required this.country,
      @JsonKey(name: 'tour_date_start') required this.dateStart,
      @JsonKey(name: 'tour_date_stop') required this.dateEnd,
      @JsonKey(name: 'number_of_nights') required this.nights,
      @JsonKey(name: 'room') required this.roomDescription,
      required this.nutrition,
      @JsonKey(name: 'tour_price') required this.tourPrice,
      @JsonKey(name: 'fuel_charge') required this.fuel,
      @JsonKey(name: 'service_charge') required this.service});

  factory _$_ModelForReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ModelForReservationResponseFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'hotel_name')
  final String name;
  @override
  @JsonKey(name: 'hotel_adress')
  final String address;
  @override
  @JsonKey(name: 'horating')
  final int rate;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingString;
  @override
  @JsonKey(name: 'departure')
  final String fromCountry;
  @override
  @JsonKey(name: 'arrival_country')
  final String country;
  @override
  @JsonKey(name: 'tour_date_start')
  final String dateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  final String dateEnd;
  @override
  @JsonKey(name: 'number_of_nights')
  final int nights;
  @override
  @JsonKey(name: 'room')
  final String roomDescription;
  @override
  final String nutrition;
  @override
  @JsonKey(name: 'tour_price')
  final int tourPrice;
  @override
  @JsonKey(name: 'fuel_charge')
  final int fuel;
  @override
  @JsonKey(name: 'service_charge')
  final int service;

  @override
  String toString() {
    return 'ModelForReservationResponse(id: $id, name: $name, address: $address, rate: $rate, ratingString: $ratingString, fromCountry: $fromCountry, country: $country, dateStart: $dateStart, dateEnd: $dateEnd, nights: $nights, roomDescription: $roomDescription, nutrition: $nutrition, tourPrice: $tourPrice, fuel: $fuel, service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelForReservationResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.ratingString, ratingString) ||
                other.ratingString == ratingString) &&
            (identical(other.fromCountry, fromCountry) ||
                other.fromCountry == fromCountry) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd) &&
            (identical(other.nights, nights) || other.nights == nights) &&
            (identical(other.roomDescription, roomDescription) ||
                other.roomDescription == roomDescription) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.tourPrice, tourPrice) ||
                other.tourPrice == tourPrice) &&
            (identical(other.fuel, fuel) || other.fuel == fuel) &&
            (identical(other.service, service) || other.service == service));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      address,
      rate,
      ratingString,
      fromCountry,
      country,
      dateStart,
      dateEnd,
      nights,
      roomDescription,
      nutrition,
      tourPrice,
      fuel,
      service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelForReservationResponseCopyWith<_$_ModelForReservationResponse>
      get copyWith => __$$_ModelForReservationResponseCopyWithImpl<
          _$_ModelForReservationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelForReservationResponseToJson(
      this,
    );
  }
}

abstract class _ModelForReservationResponse
    implements ModelForReservationResponse {
  const factory _ModelForReservationResponse(
          {required final int id,
          @JsonKey(name: 'hotel_name') required final String name,
          @JsonKey(name: 'hotel_adress') required final String address,
          @JsonKey(name: 'horating') required final int rate,
          @JsonKey(name: 'rating_name') required final String ratingString,
          @JsonKey(name: 'departure') required final String fromCountry,
          @JsonKey(name: 'arrival_country') required final String country,
          @JsonKey(name: 'tour_date_start') required final String dateStart,
          @JsonKey(name: 'tour_date_stop') required final String dateEnd,
          @JsonKey(name: 'number_of_nights') required final int nights,
          @JsonKey(name: 'room') required final String roomDescription,
          required final String nutrition,
          @JsonKey(name: 'tour_price') required final int tourPrice,
          @JsonKey(name: 'fuel_charge') required final int fuel,
          @JsonKey(name: 'service_charge') required final int service}) =
      _$_ModelForReservationResponse;

  factory _ModelForReservationResponse.fromJson(Map<String, dynamic> json) =
      _$_ModelForReservationResponse.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'hotel_name')
  String get name;
  @override
  @JsonKey(name: 'hotel_adress')
  String get address;
  @override
  @JsonKey(name: 'horating')
  int get rate;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingString;
  @override
  @JsonKey(name: 'departure')
  String get fromCountry;
  @override
  @JsonKey(name: 'arrival_country')
  String get country;
  @override
  @JsonKey(name: 'tour_date_start')
  String get dateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  String get dateEnd;
  @override
  @JsonKey(name: 'number_of_nights')
  int get nights;
  @override
  @JsonKey(name: 'room')
  String get roomDescription;
  @override
  String get nutrition;
  @override
  @JsonKey(name: 'tour_price')
  int get tourPrice;
  @override
  @JsonKey(name: 'fuel_charge')
  int get fuel;
  @override
  @JsonKey(name: 'service_charge')
  int get service;
  @override
  @JsonKey(ignore: true)
  _$$_ModelForReservationResponseCopyWith<_$_ModelForReservationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
