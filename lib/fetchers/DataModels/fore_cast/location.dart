import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

@immutable
class Location {
	final String? name;
	final String? region;
	final String? country;
	final double? lat;
	final double? lon;
	final String? tzId;
	final int? localtimeEpoch;
	final String? localtime;

	const Location({
		this.name, 
		this.region, 
		this.country, 
		this.lat, 
		this.lon, 
		this.tzId, 
		this.localtimeEpoch, 
		this.localtime, 
	});

	@override
	String toString() {
		return 'Location(name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tzId: $tzId, localtimeEpoch: $localtimeEpoch, localtime: $localtime)';
	}

	factory Location.fromMap(Map<String, dynamic> data) => Location(
				name: data['name'] as String?,
				region: data['region'] as String?,
				country: data['country'] as String?,
				lat: (data['lat'] as num?)?.toDouble(),
				lon: (data['lon'] as num?)?.toDouble(),
				tzId: data['tz_id'] as String?,
				localtimeEpoch: data['localtime_epoch'] as int?,
				localtime: data['localtime'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'name': name,
				'region': region,
				'country': country,
				'lat': lat,
				'lon': lon,
				'tz_id': tzId,
				'localtime_epoch': localtimeEpoch,
				'localtime': localtime,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Location].
	factory Location.fromJson(String data) {
		return Location.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Location] to a JSON string.
	String toJson() => json.encode(toMap());
}
