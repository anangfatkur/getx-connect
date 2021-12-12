import 'package:get/get.dart';
import 'dart:convert';

class UserProvider extends GetConnect {
  final url =
      'https://getconnect-21f98-default-rtdb.asia-southeast1.firebasedatabase.app/';
  // Get request
  // Future<Response> getUser(int id) => get('http://youapi/users/$id');

  // Get post //Simpan User ke DB
  Future<Response> postData(String name, String email, String phone) {
    final body = json.encode({
      "name": name,
      "email": email,
      "phone": phone,
    });

    return post(url + "users.json", body);
  }

  //Get delete //Hapus user dari DB
  Future<Response> deleteData(String id) {
    return delete(url + "users/$id.json");
  }
}
