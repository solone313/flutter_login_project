import 'dart:async';
import 'dart:convert';
import 'utils/network_util.dart';
import 'package:meta/meta.dart';

class UserRepository {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://44ff2559.ngrok.io/v1";
  static final LOGIN_URL = BASE_URL + "/signin";

  Future<String> authenticate({
    @required String username,
    @required String password,
  })  {
    return _netUtil.post(LOGIN_URL, body: {
      "id": username,
      "password": password
    }).then((dynamic res) {
      print(res);
      return res['data'].toString();
    });
  }

  Future<void> deleteToken() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> hasToken() async {
    /// read from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return false;
  }
}