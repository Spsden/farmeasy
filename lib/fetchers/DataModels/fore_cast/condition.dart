import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

@immutable
class Condition {
	final String? text;
	final String? icon;
	final int? code;

	const Condition({this.text, this.icon, this.code});

	@override
	String toString() => 'Condition(text: $text, icon: $icon, code: $code)';

	factory Condition.fromMap(Map<String, dynamic> data) => Condition(
				text: data['text'] as String?,
				icon: data['icon'] as String?,
				code: data['code'] as int?,
			);

	Map<String, dynamic> toMap() => {
				'text': text,
				'icon': icon,
				'code': code,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Condition].
	factory Condition.fromJson(String data) {
		return Condition.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Condition] to a JSON string.
	String toJson() => json.encode(toMap());
}
