// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Astro _$AstroFromJson(Map<String, dynamic> json) {
  return _Astro.fromJson(json);
}

/// @nodoc
mixin _$Astro {
  String? get sunrise => throw _privateConstructorUsedError;
  String? get sunset => throw _privateConstructorUsedError;
  String? get moonrise => throw _privateConstructorUsedError;
  String? get moonset => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_phase')
  String? get moonPhase => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_illumination')
  int? get moonIllumination => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_moon_up')
  int? get isMoonUp => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_sun_up')
  int? get isSunUp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstroCopyWith<Astro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroCopyWith<$Res> {
  factory $AstroCopyWith(Astro value, $Res Function(Astro) then) =
      _$AstroCopyWithImpl<$Res, Astro>;
  @useResult
  $Res call(
      {String? sunrise,
      String? sunset,
      String? moonrise,
      String? moonset,
      @JsonKey(name: 'moon_phase') String? moonPhase,
      @JsonKey(name: 'moon_illumination') int? moonIllumination,
      @JsonKey(name: 'is_moon_up') int? isMoonUp,
      @JsonKey(name: 'is_sun_up') int? isSunUp});
}

/// @nodoc
class _$AstroCopyWithImpl<$Res, $Val extends Astro>
    implements $AstroCopyWith<$Res> {
  _$AstroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moonPhase = freezed,
    Object? moonIllumination = freezed,
    Object? isMoonUp = freezed,
    Object? isSunUp = freezed,
  }) {
    return _then(_value.copyWith(
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String?,
      moonrise: freezed == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as String?,
      moonset: freezed == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as String?,
      moonPhase: freezed == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as String?,
      moonIllumination: freezed == moonIllumination
          ? _value.moonIllumination
          : moonIllumination // ignore: cast_nullable_to_non_nullable
              as int?,
      isMoonUp: freezed == isMoonUp
          ? _value.isMoonUp
          : isMoonUp // ignore: cast_nullable_to_non_nullable
              as int?,
      isSunUp: freezed == isSunUp
          ? _value.isSunUp
          : isSunUp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AstroImplCopyWith<$Res> implements $AstroCopyWith<$Res> {
  factory _$$AstroImplCopyWith(
          _$AstroImpl value, $Res Function(_$AstroImpl) then) =
      __$$AstroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? sunrise,
      String? sunset,
      String? moonrise,
      String? moonset,
      @JsonKey(name: 'moon_phase') String? moonPhase,
      @JsonKey(name: 'moon_illumination') int? moonIllumination,
      @JsonKey(name: 'is_moon_up') int? isMoonUp,
      @JsonKey(name: 'is_sun_up') int? isSunUp});
}

/// @nodoc
class __$$AstroImplCopyWithImpl<$Res>
    extends _$AstroCopyWithImpl<$Res, _$AstroImpl>
    implements _$$AstroImplCopyWith<$Res> {
  __$$AstroImplCopyWithImpl(
      _$AstroImpl _value, $Res Function(_$AstroImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moonPhase = freezed,
    Object? moonIllumination = freezed,
    Object? isMoonUp = freezed,
    Object? isSunUp = freezed,
  }) {
    return _then(_$AstroImpl(
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String?,
      moonrise: freezed == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as String?,
      moonset: freezed == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as String?,
      moonPhase: freezed == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as String?,
      moonIllumination: freezed == moonIllumination
          ? _value.moonIllumination
          : moonIllumination // ignore: cast_nullable_to_non_nullable
              as int?,
      isMoonUp: freezed == isMoonUp
          ? _value.isMoonUp
          : isMoonUp // ignore: cast_nullable_to_non_nullable
              as int?,
      isSunUp: freezed == isSunUp
          ? _value.isSunUp
          : isSunUp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AstroImpl implements _Astro {
  _$AstroImpl(
      {this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      @JsonKey(name: 'moon_phase') this.moonPhase,
      @JsonKey(name: 'moon_illumination') this.moonIllumination,
      @JsonKey(name: 'is_moon_up') this.isMoonUp,
      @JsonKey(name: 'is_sun_up') this.isSunUp});

  factory _$AstroImpl.fromJson(Map<String, dynamic> json) =>
      _$$AstroImplFromJson(json);

  @override
  final String? sunrise;
  @override
  final String? sunset;
  @override
  final String? moonrise;
  @override
  final String? moonset;
  @override
  @JsonKey(name: 'moon_phase')
  final String? moonPhase;
  @override
  @JsonKey(name: 'moon_illumination')
  final int? moonIllumination;
  @override
  @JsonKey(name: 'is_moon_up')
  final int? isMoonUp;
  @override
  @JsonKey(name: 'is_sun_up')
  final int? isSunUp;

  @override
  String toString() {
    return 'Astro(sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, moonIllumination: $moonIllumination, isMoonUp: $isMoonUp, isSunUp: $isSunUp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstroImpl &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonrise, moonrise) ||
                other.moonrise == moonrise) &&
            (identical(other.moonset, moonset) || other.moonset == moonset) &&
            (identical(other.moonPhase, moonPhase) ||
                other.moonPhase == moonPhase) &&
            (identical(other.moonIllumination, moonIllumination) ||
                other.moonIllumination == moonIllumination) &&
            (identical(other.isMoonUp, isMoonUp) ||
                other.isMoonUp == isMoonUp) &&
            (identical(other.isSunUp, isSunUp) || other.isSunUp == isSunUp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sunrise, sunset, moonrise,
      moonset, moonPhase, moonIllumination, isMoonUp, isSunUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AstroImplCopyWith<_$AstroImpl> get copyWith =>
      __$$AstroImplCopyWithImpl<_$AstroImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstroImplToJson(
      this,
    );
  }
}

abstract class _Astro implements Astro {
  factory _Astro(
      {final String? sunrise,
      final String? sunset,
      final String? moonrise,
      final String? moonset,
      @JsonKey(name: 'moon_phase') final String? moonPhase,
      @JsonKey(name: 'moon_illumination') final int? moonIllumination,
      @JsonKey(name: 'is_moon_up') final int? isMoonUp,
      @JsonKey(name: 'is_sun_up') final int? isSunUp}) = _$AstroImpl;

  factory _Astro.fromJson(Map<String, dynamic> json) = _$AstroImpl.fromJson;

  @override
  String? get sunrise;
  @override
  String? get sunset;
  @override
  String? get moonrise;
  @override
  String? get moonset;
  @override
  @JsonKey(name: 'moon_phase')
  String? get moonPhase;
  @override
  @JsonKey(name: 'moon_illumination')
  int? get moonIllumination;
  @override
  @JsonKey(name: 'is_moon_up')
  int? get isMoonUp;
  @override
  @JsonKey(name: 'is_sun_up')
  int? get isSunUp;
  @override
  @JsonKey(ignore: true)
  _$$AstroImplCopyWith<_$AstroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
