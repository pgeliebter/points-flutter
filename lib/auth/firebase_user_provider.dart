import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PointsFirebaseUser {
  PointsFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PointsFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PointsFirebaseUser> pointsFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PointsFirebaseUser>(
      (user) {
        currentUser = PointsFirebaseUser(user);
        return currentUser!;
      },
    );
