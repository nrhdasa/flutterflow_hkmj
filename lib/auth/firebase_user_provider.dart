import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KrishnaTasteFirebaseUser {
  KrishnaTasteFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

KrishnaTasteFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KrishnaTasteFirebaseUser> krishnaTasteFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<KrishnaTasteFirebaseUser>(
            (user) => currentUser = KrishnaTasteFirebaseUser(user));
