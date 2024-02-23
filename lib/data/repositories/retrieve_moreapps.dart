import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../presentation/constants/api_const.dart';
import '../../domain/models/MoreAppsModel.dart';

Future<List<MoreAppsModel>> fetchApps() async {
  final res = await http.get(Uri.parse(ApiConst.moreApps));
  if (res.statusCode == 200) {
    return (jsonDecode(res.body)["languages"] as List)
        .map((e) => MoreAppsModel.fromJson(e))
        .toList();
  } else {
    throw Exception('Failed to load posts');
  }
}
