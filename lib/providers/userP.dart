import 'package:get/get.dart';
import 'dart:convert';

class UserProvider extends GetConnect {
  final url =
      'https://getconnect-21f98-default-rtdb.asia-southeast1.firebasedatabase.app/';
  // Get request
  // Future<Response> getUser(int id) => get('http://youapi/users/$id');
  // Get post //Simpan User ke DB
  Future<Response> postData(
      String id, String name, String email, String phone) {
    final body = json.encode({
      "id": id,
      "name": name,
      "email": email,
      "phone": phone,
    });

    return post(url + "users.json", body);
  }
}
