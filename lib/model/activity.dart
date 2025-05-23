import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
sealed class Activity with _$Activity {
  factory Activity({
    required String key,
    required String activity,
    required String type,
    required int participants,
    required double price,
  }) = _Activity;

  /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}

@riverpod
Future<Activity> activity(Ref ref) async {
  // Using package:http, we fetch a random activity from the Bored API.
  final response = await http.get(Uri.https('boredapi.com', '/api/activity'));
  // Using dart:convert, we then decode the JSON payload into a Map data structure.
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  // Finally, we convert the Map into an Activity instance.
  return Activity.fromJson(json);
}

@riverpod
class Hello extends _$Hello {
  @override
  FutureOr<String> build(String hello) {
    return hello;
  }
}
