//pravim tako sto na lib kliknem desnim i napisem apis/login_api.dart
//dodajem login protokol za login_api.dart

import 'package:bloc_course_2/models.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class LoginApiProtocol {
  const LoginApiProtocol();

  Future<LoginHandle?> login({
    required String email,
    required String password,
  });
}

//implementiram login api

@immutable
class LoginApi implements LoginApiProtocol {
  // const LoginApi._sharedInstance();
  // static const LoginApi _shared = LoginApi
  //     ._sharedInstance(); //sa ove tri linije pravim singlton (singlton pattern)
  // factory LoginApi.instance() => _shared;

  @override
  Future<LoginHandle?> login({
    required String email,
    required String password,
  }) =>
      Future.delayed(
        const Duration(seconds: 2),
        () => email == 'foo@bar.com' && password == 'foobar',
      ) //ovo je future boolean
          .then(
        (isLoggedIn) => isLoggedIn ? const LoginHandle.fooBar() : null,
      ); //produsuje true/fals zavisi od kredencijala koje unesem
}
