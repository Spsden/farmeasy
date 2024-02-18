// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  @JsonKey(name: 'maxtemp_c')
  double? get maxtempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxtemp_f')
  double? get maxtempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_c')
  double? get mintempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_f')
  double? get mintempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgtemp_c')
  double? get avgtempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgtemp_f')
  double? get avgtempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxwind_mph')
  double? get maxwindMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxwind_kph')
  double? get maxwindKph => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalprecip_mm')
  double? get totalprecipMm => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalprecip_in')
  double? get totalprecipIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalsnow_cm')
  double? get totalsnowCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgvis_km')
  double? get avgvisKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgvis_miles')
  double? get avgvisMiles => throw _privateConstructorUsedError;
  int? get avghumidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_will_it_rain')
  int? get dailyWillItRain => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_chance_of_rain')
  int? get dailyChanceOfRain => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_will_it_snow')
  int? get dailyWillItSnow => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_chance_of_snow')
  int? get dailyChanceOfSnow => throw _privateConstructorUsedError;
  Condition? get condition => throw _privateConstructorUsedError;
  double? get uv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double? maxtempC,
      @JsonKey(name: 'maxtemp_f') double? maxtempF,
      @JsonKey(name: 'mintemp_c') double? mintempC,
      @JsonKey(name: 'mintemp_f') double? mintempF,
      @JsonKey(name: 'avgtemp_c') double? avgtempC,
      @JsonKey(name: 'avgtemp_f') double? avgtempF,
      @JsonKey(name: 'maxwind_mph') double? maxwindMph,
      @JsonKey(name: 'maxwind_kph') double? maxwindKph,
      @JsonKey(name: 'totalprecip_mm') double? totalprecipMm,
      @JsonKey(name: 'totalprecip_in') double? totalprecipIn,
      @JsonKey(name: 'totalsnow_cm') double? totalsnowCm,
      @JsonKey(name: 'avgvis_km') double? avgvisKm,
      @JsonKey(name: 'avgvis_miles') double? avgvisMiles,
      int? avghumidity,
      @JsonKey(name: 'daily_will_it_rain') int? dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') int? dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') int? dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') int? dailyChanceOfSnow,
      Condition? condition,
      double? uv});

  $ConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtempC = freezed,
    Object? maxtempF = freezed,
    Object? mintempC = freezed,
    Object? mintempF = freezed,
    Object? avgtempC = freezed,
    Object? avgtempF = freezed,
    Object? maxwindMph = freezed,
    Object? maxwindKph = freezed,
    Object? totalprecipMm = freezed,
    Object? totalprecipIn = freezed,
    Object? totalsnowCm = freezed,
    Object? avgvisKm = freezed,
    Object? avgvisMiles = freezed,
    Object? avghumidity = freezed,
    Object? dailyWillItRain = freezed,
    Object? dailyChanceOfRain = freezed,
    Object? dailyWillItSnow = freezed,
    Object? dailyChanceOfSnow = freezed,
    Object? condition = freezed,
    Object? uv = freezed,
  }) {
    return _then(_value.copyWith(
      maxtempC: freezed == maxtempC
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      maxtempF: freezed == maxtempF
          ? _value.maxtempF
          : maxtempF // ignore: cast_nullable_to_non_nullable
              as double?,
      mintempC: freezed == mintempC
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as double?,
      mintempF: freezed == mintempF
          ? _value.mintempF
          : mintempF // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempC: freezed == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempF: freezed == avgtempF
          ? _value.avgtempF
          : avgtempF // ignore: cast_nullable_to_non_nullable
              as double?,
      maxwindMph: freezed == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as double?,
      maxwindKph: freezed == maxwindKph
          ? _value.maxwindKph
          : maxwindKph // ignore: cast_nullable_to_non_nullable
              as double?,
      totalprecipMm: freezed == totalprecipMm
          ? _value.totalprecipMm
          : totalprecipMm // ignore: cast_nullable_to_non_nullable
              as double?,
      totalprecipIn: freezed == totalprecipIn
          ? _value.totalprecipIn
          : totalprecipIn // ignore: cast_nullable_to_non_nullable
              as double?,
      totalsnowCm: freezed == totalsnowCm
          ? _value.totalsnowCm
          : totalsnowCm // ignore: cast_nullable_to_non_nullable
              as double?,
      avgvisKm: freezed == avgvisKm
          ? _value.avgvisKm
          : avgvisKm // ignore: cast_nullable_to_non_nullable
              as double?,
      avgvisMiles: freezed == avgvisMiles
          ? _value.avgvisMiles
          : avgvisMiles // ignore: cast_nullable_to_non_nullable
              as double?,
      avghumidity: freezed == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyWillItRain: freezed == dailyWillItRain
          ? _value.dailyWillItRain
          : dailyWillItRain // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyChanceOfRain: freezed == dailyChanceOfRain
          ? _value.dailyChanceOfRain
          : dailyChanceOfRain // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyWillItSnow: freezed == dailyWillItSnow
          ? _value.dailyWillItSnow
          : dailyWillItSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyChanceOfSnow: freezed == dailyChanceOfSnow
          ? _value.dailyChanceOfSnow
          : dailyChanceOfSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res>? get condition {
    if (_value.condition == null) {
      return null;
    }

    return $ConditionCopyWith<$Res>(_value.condition!, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DayImplCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$DayImplCopyWith(_$DayImpl value, $Res Function(_$DayImpl) then) =
      __$$DayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double? maxtempC,
      @JsonKey(name: 'maxtemp_f') double? maxtempF,
      @JsonKey(name: 'mintemp_c') double? mintempC,
      @JsonKey(name: 'mintemp_f') double? mintempF,
      @JsonKey(name: 'avgtemp_c') double? avgtempC,
      @JsonKey(name: 'avgtemp_f') double? avgtempF,
      @JsonKey(name: 'maxwind_mph') double? maxwindMph,
      @JsonKey(name: 'maxwind_kph') double? maxwindKph,
      @JsonKey(name: 'totalprecip_mm') double? totalprecipMm,
      @JsonKey(name: 'totalprecip_in') double? totalprecipIn,
      @JsonKey(name: 'totalsnow_cm') double? totalsnowCm,
      @JsonKey(name: 'avgvis_km') double? avgvisKm,
      @JsonKey(name: 'avgvis_miles') double? avgvisMiles,
      int? avghumidity,
      @JsonKey(name: 'daily_will_it_rain') int? dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') int? dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') int? dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') int? dailyChanceOfSnow,
      Condition? condition,
      double? uv});

  @override
  $ConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$DayImplCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$DayImpl>
    implements _$$DayImplCopyWith<$Res> {
  __$$DayImplCopyWithImpl(_$DayImpl _value, $Res Function(_$DayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtempC = freezed,
    Object? maxtempF = freezed,
    Object? mintempC = freezed,
    Object? mintempF = freezed,
    Object? avgtempC = freezed,
    Object? avgtempF = freezed,
    Object? maxwindMph = freezed,
    Object? maxwindKph = freezed,
    Object? totalprecipMm = freezed,
    Object? totalprecipIn = freezed,
    Object? totalsnowCm = freezed,
    Object? avgvisKm = freezed,
    Object? avgvisMiles = freezed,
    Object? avghumidity = freezed,
    Object? dailyWillItRain = freezed,
    Object? dailyChanceOfRain = freezed,
    Object? dailyWillItSnow = freezed,
    Object? dailyChanceOfSnow = freezed,
    Object? condition = freezed,
    Object? uv = freezed,
  }) {
    return _then(_$DayImpl(
      maxtempC: freezed == maxtempC
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      maxtempF: freezed == maxtempF
          ? _value.maxtempF
          : maxtempF // ignore: cast_nullable_to_non_nullable
              as double?,
      mintempC: freezed == mintempC
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as double?,
      mintempF: freezed == mintempF
          ? _value.mintempF
          : mintempF // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempC: freezed == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempF: freezed == avgtempF
          ? _value.avgtempF
          : avgtempF // ignore: cast_nullable_to_non_nullable
              as double?,
      maxwindMph: freezed == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as double?,
      maxwindKph: freezed == maxwindKph
          ? _value.maxwindKph
          : maxwindKph // ignore: cast_nullable_to_non_nullable
              as double?,
      totalprecipMm: freezed == totalprecipMm
          ? _value.totalprecipMm
          : totalprecipMm // ignore: cast_nullable_to_non_nullable
              as double?,
      totalprecipIn: freezed == totalprecipIn
          ? _value.totalprecipIn
          : totalprecipIn // ignore: cast_nullable_to_non_nullable
              as double?,
      totalsnowCm: freezed == totalsnowCm
          ? _value.totalsnowCm
          : totalsnowCm // ignore: cast_nullable_to_non_nullable
              as double?,
      avgvisKm: freezed == avgvisKm
          ? _value.avgvisKm
          : avgvisKm // ignore: cast_nullable_to_non_nullable
              as double?,
      avgvisMiles: freezed == avgvisMiles
          ? _value.avgvisMiles
          : avgvisMiles // ignore: cast_nullable_to_non_nullable
              as double?,
      avghumidity: freezed == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyWillItRain: freezed == dailyWillItRain
          ? _value.dailyWillItRain
          : dailyWillItRain // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyChanceOfRain: freezed == dailyChanceOfRain
          ? _value.dailyChanceOfRain
          : dailyChanceOfRain // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyWillItSnow: freezed == dailyWillItSnow
          ? _value.dailyWillItSnow
          : dailyWillItSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyChanceOfSnow: freezed == dailyChanceOfSnow
          ? _value.dailyChanceOfSnow
          : dailyChanceOfSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayImpl implements _Day {
  _$DayImpl(
      {@JsonKey(name: 'maxtemp_c') this.maxtempC,
      @JsonKey(name: 'maxtemp_f') this.maxtempF,
      @JsonKey(name: 'mintemp_c') this.mintempC,
      @JsonKey(name: 'mintemp_f') this.mintempF,
      @JsonKey(name: 'avgtemp_c') this.avgtempC,
      @JsonKey(name: 'avgtemp_f') this.avgtempF,
      @JsonKey(name: 'maxwind_mph') this.maxwindMph,
      @JsonKey(name: 'maxwind_kph') this.maxwindKph,
      @JsonKey(name: 'totalprecip_mm') this.totalprecipMm,
      @JsonKey(name: 'totalprecip_in') this.totalprecipIn,
      @JsonKey(name: 'totalsnow_cm') this.totalsnowCm,
      @JsonKey(name: 'avgvis_km') this.avgvisKm,
      @JsonKey(name: 'avgvis_miles') this.avgvisMiles,
      this.avghumidity,
      @JsonKey(name: 'daily_will_it_rain') this.dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') this.dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') this.dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') this.dailyChanceOfSnow,
      this.condition,
      this.uv});

  factory _$DayImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayImplFromJson(json);

  @override
  @JsonKey(name: 'maxtemp_c')
  final double? maxtempC;
  @override
  @JsonKey(name: 'maxtemp_f')
  final double? maxtempF;
  @override
  @JsonKey(name: 'mintemp_c')
  final double? mintempC;
  @override
  @JsonKey(name: 'mintemp_f')
  final double? mintempF;
  @override
  @JsonKey(name: 'avgtemp_c')
  final double? avgtempC;
  @override
  @JsonKey(name: 'avgtemp_f')
  final double? avgtempF;
  @override
  @JsonKey(name: 'maxwind_mph')
  final double? maxwindMph;
  @override
  @JsonKey(name: 'maxwind_kph')
  final double? maxwindKph;
  @override
  @JsonKey(name: 'totalprecip_mm')
  final double? totalprecipMm;
  @override
  @JsonKey(name: 'totalprecip_in')
  final double? totalprecipIn;
  @override
  @JsonKey(name: 'totalsnow_cm')
  final double? totalsnowCm;
  @override
  @JsonKey(name: 'avgvis_km')
  final double? avgvisKm;
  @override
  @JsonKey(name: 'avgvis_miles')
  final double? avgvisMiles;
  @override
  final int? avghumidity;
  @override
  @JsonKey(name: 'daily_will_it_rain')
  final int? dailyWillItRain;
  @override
  @JsonKey(name: 'daily_chance_of_rain')
  final int? dailyChanceOfRain;
  @override
  @JsonKey(name: 'daily_will_it_snow')
  final int? dailyWillItSnow;
  @override
  @JsonKey(name: 'daily_chance_of_snow')
  final int? dailyChanceOfSnow;
  @override
  final Condition? condition;
  @override
  final double? uv;

  @override
  String toString() {
    return 'Day(maxtempC: $maxtempC, maxtempF: $maxtempF, mintempC: $mintempC, mintempF: $mintempF, avgtempC: $avgtempC, avgtempF: $avgtempF, maxwindMph: $maxwindMph, maxwindKph: $maxwindKph, totalprecipMm: $totalprecipMm, totalprecipIn: $totalprecipIn, totalsnowCm: $totalsnowCm, avgvisKm: $avgvisKm, avgvisMiles: $avgvisMiles, avghumidity: $avghumidity, dailyWillItRain: $dailyWillItRain, dailyChanceOfRain: $dailyChanceOfRain, dailyWillItSnow: $dailyWillItSnow, dailyChanceOfSnow: $dailyChanceOfSnow, condition: $condition, uv: $uv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayImpl &&
            (identical(other.maxtempC, maxtempC) ||
                other.maxtempC == maxtempC) &&
            (identical(other.maxtempF, maxtempF) ||
                other.maxtempF == maxtempF) &&
            (identical(other.mintempC, mintempC) ||
                other.mintempC == mintempC) &&
            (identical(other.mintempF, mintempF) ||
                other.mintempF == mintempF) &&
            (identical(other.avgtempC, avgtempC) ||
                other.avgtempC == avgtempC) &&
            (identical(other.avgtempF, avgtempF) ||
                other.avgtempF == avgtempF) &&
            (identical(other.maxwindMph, maxwindMph) ||
                other.maxwindMph == maxwindMph) &&
            (identical(other.maxwindKph, maxwindKph) ||
                other.maxwindKph == maxwindKph) &&
            (identical(other.totalprecipMm, totalprecipMm) ||
                other.totalprecipMm == totalprecipMm) &&
            (identical(other.totalprecipIn, totalprecipIn) ||
                other.totalprecipIn == totalprecipIn) &&
            (identical(other.totalsnowCm, totalsnowCm) ||
                other.totalsnowCm == totalsnowCm) &&
            (identical(other.avgvisKm, avgvisKm) ||
                other.avgvisKm == avgvisKm) &&
            (identical(other.avgvisMiles, avgvisMiles) ||
                other.avgvisMiles == avgvisMiles) &&
            (identical(other.avghumidity, avghumidity) ||
                other.avghumidity == avghumidity) &&
            (identical(other.dailyWillItRain, dailyWillItRain) ||
                other.dailyWillItRain == dailyWillItRain) &&
            (identical(other.dailyChanceOfRain, dailyChanceOfRain) ||
                other.dailyChanceOfRain == dailyChanceOfRain) &&
            (identical(other.dailyWillItSnow, dailyWillItSnow) ||
                other.dailyWillItSnow == dailyWillItSnow) &&
            (identical(other.dailyChanceOfSnow, dailyChanceOfSnow) ||
                other.dailyChanceOfSnow == dailyChanceOfSnow) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.uv, uv) || other.uv == uv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        maxtempC,
        maxtempF,
        mintempC,
        mintempF,
        avgtempC,
        avgtempF,
        maxwindMph,
        maxwindKph,
        totalprecipMm,
        totalprecipIn,
        totalsnowCm,
        avgvisKm,
        avgvisMiles,
        avghumidity,
        dailyWillItRain,
        dailyChanceOfRain,
        dailyWillItSnow,
        dailyChanceOfSnow,
        condition,
        uv
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      __$$DayImplCopyWithImpl<_$DayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayImplToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  factory _Day(
      {@JsonKey(name: 'maxtemp_c') final double? maxtempC,
      @JsonKey(name: 'maxtemp_f') final double? maxtempF,
      @JsonKey(name: 'mintemp_c') final double? mintempC,
      @JsonKey(name: 'mintemp_f') final double? mintempF,
      @JsonKey(name: 'avgtemp_c') final double? avgtempC,
      @JsonKey(name: 'avgtemp_f') final double? avgtempF,
      @JsonKey(name: 'maxwind_mph') final double? maxwindMph,
      @JsonKey(name: 'maxwind_kph') final double? maxwindKph,
      @JsonKey(name: 'totalprecip_mm') final double? totalprecipMm,
      @JsonKey(name: 'totalprecip_in') final double? totalprecipIn,
      @JsonKey(name: 'totalsnow_cm') final double? totalsnowCm,
      @JsonKey(name: 'avgvis_km') final double? avgvisKm,
      @JsonKey(name: 'avgvis_miles') final double? avgvisMiles,
      final int? avghumidity,
      @JsonKey(name: 'daily_will_it_rain') final int? dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') final int? dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') final int? dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') final int? dailyChanceOfSnow,
      final Condition? condition,
      final double? uv}) = _$DayImpl;

  factory _Day.fromJson(Map<String, dynamic> json) = _$DayImpl.fromJson;

  @override
  @JsonKey(name: 'maxtemp_c')
  double? get maxtempC;
  @override
  @JsonKey(name: 'maxtemp_f')
  double? get maxtempF;
  @override
  @JsonKey(name: 'mintemp_c')
  double? get mintempC;
  @override
  @JsonKey(name: 'mintemp_f')
  double? get mintempF;
  @override
  @JsonKey(name: 'avgtemp_c')
  double? get avgtempC;
  @override
  @JsonKey(name: 'avgtemp_f')
  double? get avgtempF;
  @override
  @JsonKey(name: 'maxwind_mph')
  double? get maxwindMph;
  @override
  @JsonKey(name: 'maxwind_kph')
  double? get maxwindKph;
  @override
  @JsonKey(name: 'totalprecip_mm')
  double? get totalprecipMm;
  @override
  @JsonKey(name: 'totalprecip_in')
  double? get totalprecipIn;
  @override
  @JsonKey(name: 'totalsnow_cm')
  double? get totalsnowCm;
  @override
  @JsonKey(name: 'avgvis_km')
  double? get avgvisKm;
  @override
  @JsonKey(name: 'avgvis_miles')
  double? get avgvisMiles;
  @override
  int? get avghumidity;
  @override
  @JsonKey(name: 'daily_will_it_rain')
  int? get dailyWillItRain;
  @override
  @JsonKey(name: 'daily_chance_of_rain')
  int? get dailyChanceOfRain;
  @override
  @JsonKey(name: 'daily_will_it_snow')
  int? get dailyWillItSnow;
  @override
  @JsonKey(name: 'daily_chance_of_snow')
  int? get dailyChanceOfSnow;
  @override
  Condition? get condition;
  @override
  double? get uv;
  @override
  @JsonKey(ignore: true)
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
