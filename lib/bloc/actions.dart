import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AppAction {
  const AppAction();
}

@immutable
class LoginAction implements AppAction {
  final String email;
  final String password;

  const LoginAction({
    required this.email,
    required this.password,
  });
}

//load notes action nakon sto se ulogujem u aplikaciju

@immutable
class LoadNotesAction implements AppAction {
  const LoadNotesAction();
}
