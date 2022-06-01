import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HKMAshramFirebaseUser {
  HKMAshramFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

HKMAshramFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HKMAshramFirebaseUser> hKMAshramFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<HKMAshramFirebaseUser>(
        (user) => currentUser = HKMAshramFirebaseUser(user));
