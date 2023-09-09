// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_for_room_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomsModel _$RoomsModelFromJson(Map<String, dynamic> json) {
  return _RoomsModel.fromJson(json);
}

/// @nodoc
mixin _$RoomsModel {
  List<ModelForRoomResponse> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsModelCopyWith<RoomsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsModelCopyWith<$Res> {
  factory $RoomsModelCopyWith(
          RoomsModel value, $Res Function(RoomsModel) then) =
      _$RoomsModelCopyWithImpl<$Res, RoomsModel>;
  @useResult
  $Res call({List<ModelForRoomResponse> rooms});
}

/// @nodoc
class _$RoomsModelCopyWithImpl<$Res, $Val extends RoomsModel>
    implements $RoomsModelCopyWith<$Res> {
  _$RoomsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<ModelForRoomResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomsModelCopyWith<$Res>
    implements $RoomsModelCopyWith<$Res> {
  factory _$$_RoomsModelCopyWith(
          _$_RoomsModel value, $Res Function(_$_RoomsModel) then) =
      __$$_RoomsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ModelForRoomResponse> rooms});
}

/// @nodoc
class __$$_RoomsModelCopyWithImpl<$Res>
    extends _$RoomsModelCopyWithImpl<$Res, _$_RoomsModel>
    implements _$$_RoomsModelCopyWith<$Res> {
  __$$_RoomsModelCopyWithImpl(
      _$_RoomsModel _value, $Res Function(_$_RoomsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$_RoomsModel(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<ModelForRoomResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomsModel implements _RoomsModel {
  const _$_RoomsModel({required final List<ModelForRoomResponse> rooms})
      : _rooms = rooms;

  factory _$_RoomsModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsModelFromJson(json);

  final List<ModelForRoomResponse> _rooms;
  @override
  List<ModelForRoomResponse> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomsModel(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomsModel &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomsModelCopyWith<_$_RoomsModel> get copyWith =>
      __$$_RoomsModelCopyWithImpl<_$_RoomsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsModelToJson(
      this,
    );
  }
}

abstract class _RoomsModel implements RoomsModel {
  const factory _RoomsModel({required final List<ModelForRoomResponse> rooms}) =
      _$_RoomsModel;

  factory _RoomsModel.fromJson(Map<String, dynamic> json) =
      _$_RoomsModel.fromJson;

  @override
  List<ModelForRoomResponse> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomsModelCopyWith<_$_RoomsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelForRoomResponse _$ModelForRoomResponseFromJson(Map<String, dynamic> json) {
  return _ModelForRoomResponse.fromJson(json);
}

/// @nodoc
mixin _$ModelForRoomResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per')
  String get priceForWhat => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imagesAdress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelForRoomResponseCopyWith<ModelForRoomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelForRoomResponseCopyWith<$Res> {
  factory $ModelForRoomResponseCopyWith(ModelForRoomResponse value,
          $Res Function(ModelForRoomResponse) then) =
      _$ModelForRoomResponseCopyWithImpl<$Res, ModelForRoomResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      List<String> peculiarities,
      @JsonKey(name: 'price_per') String priceForWhat,
      @JsonKey(name: 'image_urls') List<String> imagesAdress});
}

/// @nodoc
class _$ModelForRoomResponseCopyWithImpl<$Res,
        $Val extends ModelForRoomResponse>
    implements $ModelForRoomResponseCopyWith<$Res> {
  _$ModelForRoomResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? peculiarities = null,
    Object? priceForWhat = null,
    Object? imagesAdress = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      priceForWhat: null == priceForWhat
          ? _value.priceForWhat
          : priceForWhat // ignore: cast_nullable_to_non_nullable
              as String,
      imagesAdress: null == imagesAdress
          ? _value.imagesAdress
          : imagesAdress // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelForRoomResponseCopyWith<$Res>
    implements $ModelForRoomResponseCopyWith<$Res> {
  factory _$$_ModelForRoomResponseCopyWith(_$_ModelForRoomResponse value,
          $Res Function(_$_ModelForRoomResponse) then) =
      __$$_ModelForRoomResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      List<String> peculiarities,
      @JsonKey(name: 'price_per') String priceForWhat,
      @JsonKey(name: 'image_urls') List<String> imagesAdress});
}

/// @nodoc
class __$$_ModelForRoomResponseCopyWithImpl<$Res>
    extends _$ModelForRoomResponseCopyWithImpl<$Res, _$_ModelForRoomResponse>
    implements _$$_ModelForRoomResponseCopyWith<$Res> {
  __$$_ModelForRoomResponseCopyWithImpl(_$_ModelForRoomResponse _value,
      $Res Function(_$_ModelForRoomResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? peculiarities = null,
    Object? priceForWhat = null,
    Object? imagesAdress = null,
  }) {
    return _then(_$_ModelForRoomResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      priceForWhat: null == priceForWhat
          ? _value.priceForWhat
          : priceForWhat // ignore: cast_nullable_to_non_nullable
              as String,
      imagesAdress: null == imagesAdress
          ? _value._imagesAdress
          : imagesAdress // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelForRoomResponse implements _ModelForRoomResponse {
  const _$_ModelForRoomResponse(
      {required this.id,
      required this.name,
      required this.price,
      required final List<String> peculiarities,
      @JsonKey(name: 'price_per') required this.priceForWhat,
      @JsonKey(name: 'image_urls') required final List<String> imagesAdress})
      : _peculiarities = peculiarities,
        _imagesAdress = imagesAdress;

  factory _$_ModelForRoomResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ModelForRoomResponseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  final List<String> _peculiarities;
  @override
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  @override
  @JsonKey(name: 'price_per')
  final String priceForWhat;
  final List<String> _imagesAdress;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imagesAdress {
    if (_imagesAdress is EqualUnmodifiableListView) return _imagesAdress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagesAdress);
  }

  @override
  String toString() {
    return 'ModelForRoomResponse(id: $id, name: $name, price: $price, peculiarities: $peculiarities, priceForWhat: $priceForWhat, imagesAdress: $imagesAdress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelForRoomResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities) &&
            (identical(other.priceForWhat, priceForWhat) ||
                other.priceForWhat == priceForWhat) &&
            const DeepCollectionEquality()
                .equals(other._imagesAdress, _imagesAdress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      const DeepCollectionEquality().hash(_peculiarities),
      priceForWhat,
      const DeepCollectionEquality().hash(_imagesAdress));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelForRoomResponseCopyWith<_$_ModelForRoomResponse> get copyWith =>
      __$$_ModelForRoomResponseCopyWithImpl<_$_ModelForRoomResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelForRoomResponseToJson(
      this,
    );
  }
}

abstract class _ModelForRoomResponse implements ModelForRoomResponse {
  const factory _ModelForRoomResponse(
      {required final int id,
      required final String name,
      required final int price,
      required final List<String> peculiarities,
      @JsonKey(name: 'price_per') required final String priceForWhat,
      @JsonKey(name: 'image_urls')
      required final List<String> imagesAdress}) = _$_ModelForRoomResponse;

  factory _ModelForRoomResponse.fromJson(Map<String, dynamic> json) =
      _$_ModelForRoomResponse.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  List<String> get peculiarities;
  @override
  @JsonKey(name: 'price_per')
  String get priceForWhat;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imagesAdress;
  @override
  @JsonKey(ignore: true)
  _$$_ModelForRoomResponseCopyWith<_$_ModelForRoomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
