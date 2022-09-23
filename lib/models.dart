//ovo mi je login forma
import 'package:flutter/foundation.dart' show immutable;

@immutable
class LoginHandle {
  final String token;

  const LoginHandle({
    required this.token,
  });
  const LoginHandle.fooBar() : token = 'foobar';

  @override
  bool operator ==(covariant LoginHandle other) => token == other.token;

  @override
  int get hashCode => token.hashCode;

  @override
  String toString() => 'LoginHandle(token = $token)';
}
//ovo je login handle deo

//sad radim login errors

enum LoginErrors { invalidHandle }

//dodajem note klasu

@immutable
class Note {
  final String title;

  const Note({
    required this.title,
  }); //zasto dodajem required kad moze i bez

  @override
  String toString() => 'Note (title = $title)';
}

final mockNotes = Iterable.generate(
  3,
  (i) => Note(
    title: 'Note ${i + 1}',
  ), //za nulu (i) koju sam ti prosledio vrati mi objekat => Note(title: 'Note ${i + 1}'), dodajem +1 jer se broji od nule
);
