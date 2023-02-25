import 'package:get/get.dart';
import 'package:healthy_in/Models/webinar_models.dart';
import 'package:http/http.dart' as http;

class WebinarController extends GetxController {
  final String baseUrl = "api.hackathon.dinotis.com";

  List<Webinar> _allWebinar = [];

  List<Webinar> get allWebinar => _allWebinar;

  Future<void> getAllWebinar({int size = 5}) async {
    final Map<String, String> params = {'size': size.toString()};

    final response = await http.get(Uri.https(baseUrl, '/v1/meetings', params));

    if (response.statusCode == 200) {
      WebinarResponse webinarResponse = webinarResponseFromJson(response.body);
      _allWebinar = webinarResponse.meetings;

      for (var w in _allWebinar) {
        print(w.id);
      }
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load webinar');
    }
  }

  // Furtue<void> getWebinarInfo(String id) {

  // }
}
