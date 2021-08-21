import 'package:dio/dio.dart';

Future getData() async {
  var dio = Dio();
  var result = await dio
      .get("https://api.hgbrasil.com/weather?woeid=455851&key=b15563f5");

  return result.data;
}
