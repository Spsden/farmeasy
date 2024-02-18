// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecastday.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Forecastday _$ForecastdayFromJson(Map<String, dynamic> json) {
  return _Forecastday.fromJson(json);
}

/// @nodoc
mixin _$Forecastday {
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_epoch')
  int? get dateEpoch => throw _privateConstructorUsedError;
  Day? get day => throw _privateConstructorUsedError;
  Astro? get astro => throw _privateConstructorUsedError;
  List<Hour>? get hour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastdayCopyWith<Forecastday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastdayCopyWith<$Res> {
  factory $ForecastdayCopyWith(
          Forecastday value, $Res Function(Forecastday) then) =
      _$ForecastdayCopyWithImpl<$Res, Forecastday>;
  @useResult
  $Res call(
      {String? date,
      @JsonKey(name: 'date_epoch') int? dateEpoch,
      Day? day,
      Astro? astro,
      List<Hour>? hour});

  $DayCopyWith<$Res>? get day;
  $AstroCopyWith<$Res>? get astro;
}

/// @nodoc
class _$ForecastdayCopyWithImpl<$Res, $Val extends Forecastday>
    implements $ForecastdayCopyWith<$Res> {
  _$ForecastdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? dateEpoch = freezed,
    Object? day = freezed,
    Object? astro = freezed,
    Object? hour = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      dateEpoch: freezed == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day?,
      astro: freezed == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as Astro?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<Hour>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res>? get day {
    if (_value.day == null) {
      return null;
    }

    return $DayCopyWith<$Res>(_value.day!, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AstroCopyWith<$Res>? get astro {
    if (_value.astro == null) {
      return null;
    }

    return $AstroCopyWith<$Res>(_value.astro!, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastdayImplCopyWith<$Res>
    implements $ForecastdayCopyWith<$Res> {
  factory _$$ForecastdayImplCopyWith(
          _$ForecastdayImpl value, $Res Function(_$ForecastdayImpl) then) =
      __$$ForecastdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      @JsonKey(name: 'date_epoch') int? dateEpoch,
      Day? day,
      Astro? astro,
      List<Hour>? hour});

  @override
  $DayCopyWith<$Res>? get day;
  @override
  $AstroCopyWith<$Res>? get astro;
}

/// @nodoc
class __$$ForecastdayImplCopyWithImpl<$Res>
    extends _$ForecastdayCopyWithImpl<$Res, _$ForecastdayImpl>
    implements _$$ForecastdayImplCopyWith<$Res> {
  __$$ForecastdayImplCopyWithImpl(
      _$ForecastdayImpl _value, $Res Function(_$ForecastdayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? dateEpoch = freezed,
    Object? day = freezed,
    Object? astro = freezed,
    Object? hour = freezed,
  }) {
    return _then(_$ForecastdayImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      dateEpoch: freezed == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day?,
      astro: freezed == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as Astro?,
      hour: freezed == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<Hour>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastdayImpl implements _Forecastday {
  _$ForecastdayImpl(
      {this.date,
      @JsonKey(name: 'date_epoch') this.dateEpoch,
      this.day,
      this.astro,
      final List<Hour>? hour})
      : _hour = hour;

  factory _$ForecastdayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastdayImplFromJson(json);

  @override
  final String? date;
  @override
  @JsonKey(name: 'date_epoch')
  final int? dateEpoch;
  @override
  final Day? day;
  @override
  final Astro? astro;
  final List<Hour>? _hour;
  @override
  List<Hour>? get hour {
    final value = _hour;
    if (value == null) return null;
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Forecastday(date: $date, dateEpoch: $dateEpoch, day: $day, astro: $astro, hour: $hour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastdayImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateEpoch, dateEpoch) ||
                other.dateEpoch == dateEpoch) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.astro, astro) || other.astro == astro) &&
            const DeepCollectionEquality().equals(other._hour, _hour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, dateEpoch, day, astro,
      const DeepCollectionEquality().hash(_hour));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastdayImplCopyWith<_$ForecastdayImpl> get copyWith =>
      __$$ForecastdayImplCopyWithImpl<_$ForecastdayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastdayImplToJson(
      this,
    );
  }
}

abstract class _Forecastday implements Forecastday {
  factory _Forecastday(
      {final String? date,
      @JsonKey(name: 'date_epoch') final int? dateEpoch,
      final Day? day,
      final Astro? astro,
      final List<Hour>? hour}) = _$ForecastdayImpl;

  factory _Forecastday.fromJson(Map<String, dynamic> json) =
      _$ForecastdayImpl.fromJson;

  @override
  String? get date;
  @override
  @JsonKey(name: 'date_epoch')
  int? get dateEpoch;
  @override
  Day? get day;
  @override
  Astro? get astro;
  @override
  List<Hour>? get hour;
  @override
  @JsonKey(ignore: true)
  _$$ForecastdayImplCopyWith<_$ForecastdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
