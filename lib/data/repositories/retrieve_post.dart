import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../presentation/constants/api_const.dart';

Future<List> fetchPosts() async {
  final res = await http.get(Uri.parse(ApiConst.posts));
  if (res.statusCode == 200) {
    return jsonDecode(res.body);
  } else {
    throw Exception('Failed to load posts');
  }
}
