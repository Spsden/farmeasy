import 'package:freezed_annotation/freezed_annotation.dart';

part 'astro.freezed.dart';
part 'astro.g.dart';

@freezed
class Astro with _$Astro {
	factory Astro({
		String? sunrise,
		String? sunset,
		String? moonrise,
		String? moonset,
		@JsonKey(name: 'moon_phase') String? moonPhase,
		@JsonKey(name: 'moon_illumination') int? moonIllumination,
		@JsonKey(name: 'is_moon_up') int? isMoonUp,
		@JsonKey(name: 'is_sun_up') int? isSunUp,
	}) = _Astro;

	factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);
}