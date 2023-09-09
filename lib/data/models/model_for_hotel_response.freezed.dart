// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_for_hotel_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AboutTheHotel _$AboutTheHotelFromJson(Map<String, dynamic> json) {
  return _AboutTheHotel.fromJson(json);
}

/// @nodoc
mixin _$AboutTheHotel {
  String get description => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutTheHotelCopyWith<AboutTheHotel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutTheHotelCopyWith<$Res> {
  factory $AboutTheHotelCopyWith(
          AboutTheHotel value, $Res Function(AboutTheHotel) then) =
      _$AboutTheHotelCopyWithImpl<$Res, AboutTheHotel>;
  @useResult
  $Res call({String description, List<String> peculiarities});
}

/// @nodoc
class _$AboutTheHotelCopyWithImpl<$Res, $Val extends AboutTheHotel>
    implements $AboutTheHotelCopyWith<$Res> {
  _$AboutTheHotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AboutTheHotelCopyWith<$Res>
    implements $AboutTheHotelCopyWith<$Res> {
  factory _$$_AboutTheHotelCopyWith(
          _$_AboutTheHotel value, $Res Function(_$_AboutTheHotel) then) =
      __$$_AboutTheHotelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> peculiarities});
}

/// @nodoc
class __$$_AboutTheHotelCopyWithImpl<$Res>
    extends _$AboutTheHotelCopyWithImpl<$Res, _$_AboutTheHotel>
    implements _$$_AboutTheHotelCopyWith<$Res> {
  __$$_AboutTheHotelCopyWithImpl(
      _$_AboutTheHotel _value, $Res Function(_$_AboutTheHotel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_$_AboutTheHotel(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AboutTheHotel implements _AboutTheHotel {
  const _$_AboutTheHotel(
      {required this.description, required final List<String> peculiarities})
      : _peculiarities = peculiarities;

  factory _$_AboutTheHotel.fromJson(Map<String, dynamic> json) =>
      _$$_AboutTheHotelFromJson(json);

  @override
  final String description;
  final List<String> _peculiarities;
  @override
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  @override
  String toString() {
    return 'AboutTheHotel(description: $description, peculiarities: $peculiarities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutTheHotel &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_peculiarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AboutTheHotelCopyWith<_$_AboutTheHotel> get copyWith =>
      __$$_AboutTheHotelCopyWithImpl<_$_AboutTheHotel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutTheHotelToJson(
      this,
    );
  }
}

abstract class _AboutTheHotel implements AboutTheHotel {
  const factory _AboutTheHotel(
      {required final String description,
      required final List<String> peculiarities}) = _$_AboutTheHotel;

  factory _AboutTheHotel.fromJson(Map<String, dynamic> json) =
      _$_AboutTheHotel.fromJson;

  @override
  String get description;
  @override
  List<String> get peculiarities;
  @override
  @JsonKey(ignore: true)
  _$$_AboutTheHotelCopyWith<_$_AboutTheHotel> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelForHotelResponse _$ModelForHotelResponseFromJson(
    Map<String, dynamic> json) {
  return _ModelForHotelResponse.fromJson(json);
}

/// @nodoc
mixin _$ModelForHotelResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'adress')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_price')
  int get minimalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_for_it')
  String get priceForIt => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imagesAdress => throw _privateConstructorUsedError;
  @JsonKey(name: 'about_the_hotel')
  AboutTheHotel get hotelInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelForHotelResponseCopyWith<ModelForHotelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelForHotelResponseCopyWith<$Res> {
  factory $ModelForHotelResponseCopyWith(ModelForHotelResponse value,
          $Res Function(ModelForHotelResponse) then) =
      _$ModelForHotelResponseCopyWithImpl<$Res, ModelForHotelResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'adress') String address,
      @JsonKey(name: 'minimal_price') int minimalPrice,
      @JsonKey(name: 'price_for_it') String priceForIt,
      int rating,
      @JsonKey(name: 'rating_name') String ratingName,
      @JsonKey(name: 'image_urls') List<String> imagesAdress,
      @JsonKey(name: 'about_the_hotel') AboutTheHotel hotelInfo});

  $AboutTheHotelCopyWith<$Res> get hotelInfo;
}

/// @nodoc
class _$ModelForHotelResponseCopyWithImpl<$Res,
        $Val extends ModelForHotelResponse>
    implements $ModelForHotelResponseCopyWith<$Res> {
  _$ModelForHotelResponseCopyWithImpl(this._value, this._then);

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
    Object? minimalPrice = null,
    Object? priceForIt = null,
    Object? rating = null,
    Object? ratingName = null,
    Object? imagesAdress = null,
    Object? hotelInfo = null,
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
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      imagesAdress: null == imagesAdress
          ? _value.imagesAdress
          : imagesAdress // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hotelInfo: null == hotelInfo
          ? _value.hotelInfo
          : hotelInfo // ignore: cast_nullable_to_non_nullable
              as AboutTheHotel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AboutTheHotelCopyWith<$Res> get hotelInfo {
    return $AboutTheHotelCopyWith<$Res>(_value.hotelInfo, (value) {
      return _then(_value.copyWith(hotelInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ModelForHotelResponseCopyWith<$Res>
    implements $ModelForHotelResponseCopyWith<$Res> {
  factory _$$_ModelForHotelResponseCopyWith(_$_ModelForHotelResponse value,
          $Res Function(_$_ModelForHotelResponse) then) =
      __$$_ModelForHotelResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'adress') String address,
      @JsonKey(name: 'minimal_price') int minimalPrice,
      @JsonKey(name: 'price_for_it') String priceForIt,
      int rating,
      @JsonKey(name: 'rating_name') String ratingName,
      @JsonKey(name: 'image_urls') List<String> imagesAdress,
      @JsonKey(name: 'about_the_hotel') AboutTheHotel hotelInfo});

  @override
  $AboutTheHotelCopyWith<$Res> get hotelInfo;
}

/// @nodoc
class __$$_ModelForHotelResponseCopyWithImpl<$Res>
    extends _$ModelForHotelResponseCopyWithImpl<$Res, _$_ModelForHotelResponse>
    implements _$$_ModelForHotelResponseCopyWith<$Res> {
  __$$_ModelForHotelResponseCopyWithImpl(_$_ModelForHotelResponse _value,
      $Res Function(_$_ModelForHotelResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? minimalPrice = null,
    Object? priceForIt = null,
    Object? rating = null,
    Object? ratingName = null,
    Object? imagesAdress = null,
    Object? hotelInfo = null,
  }) {
    return _then(_$_ModelForHotelResponse(
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
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      imagesAdress: null == imagesAdress
          ? _value._imagesAdress
          : imagesAdress // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hotelInfo: null == hotelInfo
          ? _value.hotelInfo
          : hotelInfo // ignore: cast_nullable_to_non_nullable
              as AboutTheHotel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelForHotelResponse implements _ModelForHotelResponse {
  const _$_ModelForHotelResponse(
      {required this.id,
      required this.name,
      @JsonKey(name: 'adress') required this.address,
      @JsonKey(name: 'minimal_price') required this.minimalPrice,
      @JsonKey(name: 'price_for_it') required this.priceForIt,
      required this.rating,
      @JsonKey(name: 'rating_name') required this.ratingName,
      @JsonKey(name: 'image_urls') required final List<String> imagesAdress,
      @JsonKey(name: 'about_the_hotel') required this.hotelInfo})
      : _imagesAdress = imagesAdress;

  factory _$_ModelForHotelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ModelForHotelResponseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'adress')
  final String address;
  @override
  @JsonKey(name: 'minimal_price')
  final int minimalPrice;
  @override
  @JsonKey(name: 'price_for_it')
  final String priceForIt;
  @override
  final int rating;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;
  final List<String> _imagesAdress;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imagesAdress {
    if (_imagesAdress is EqualUnmodifiableListView) return _imagesAdress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagesAdress);
  }

  @override
  @JsonKey(name: 'about_the_hotel')
  final AboutTheHotel hotelInfo;

  @override
  String toString() {
    return 'ModelForHotelResponse(id: $id, name: $name, address: $address, minimalPrice: $minimalPrice, priceForIt: $priceForIt, rating: $rating, ratingName: $ratingName, imagesAdress: $imagesAdress, hotelInfo: $hotelInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelForHotelResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.minimalPrice, minimalPrice) ||
                other.minimalPrice == minimalPrice) &&
            (identical(other.priceForIt, priceForIt) ||
                other.priceForIt == priceForIt) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            const DeepCollectionEquality()
                .equals(other._imagesAdress, _imagesAdress) &&
            (identical(other.hotelInfo, hotelInfo) ||
                other.hotelInfo == hotelInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      address,
      minimalPrice,
      priceForIt,
      rating,
      ratingName,
      const DeepCollectionEquality().hash(_imagesAdress),
      hotelInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelForHotelResponseCopyWith<_$_ModelForHotelResponse> get copyWith =>
      __$$_ModelForHotelResponseCopyWithImpl<_$_ModelForHotelResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelForHotelResponseToJson(
      this,
    );
  }
}

abstract class _ModelForHotelResponse implements ModelForHotelResponse {
  const factory _ModelForHotelResponse(
      {required final int id,
      required final String name,
      @JsonKey(name: 'adress') required final String address,
      @JsonKey(name: 'minimal_price') required final int minimalPrice,
      @JsonKey(name: 'price_for_it') required final String priceForIt,
      required final int rating,
      @JsonKey(name: 'rating_name') required final String ratingName,
      @JsonKey(name: 'image_urls') required final List<String> imagesAdress,
      @JsonKey(name: 'about_the_hotel')
      required final AboutTheHotel hotelInfo}) = _$_ModelForHotelResponse;

  factory _ModelForHotelResponse.fromJson(Map<String, dynamic> json) =
      _$_ModelForHotelResponse.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'adress')
  String get address;
  @override
  @JsonKey(name: 'minimal_price')
  int get minimalPrice;
  @override
  @JsonKey(name: 'price_for_it')
  String get priceForIt;
  @override
  int get rating;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imagesAdress;
  @override
  @JsonKey(name: 'about_the_hotel')
  AboutTheHotel get hotelInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ModelForHotelResponseCopyWith<_$_ModelForHotelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
