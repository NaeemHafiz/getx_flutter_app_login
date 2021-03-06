import 'package:getx_flutter_app_login/http/urls.dart';
import 'package:http/http.dart' as http;

class Request {
  final String url;
  final dynamic body;

  Request({this.url, this.body});

  Future<http.Response> post() {
    return http
        .post(Url.urlBaseLogin + url, body: body)
        .timeout(Duration(minutes: 2));
  }

  Future<http.Response> get() {
    return http.get(Url.urlBase + url).timeout(Duration(minutes: 2));
  }
}
