import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthGateway {
  Future<void> verifyPhone({
    required String phoneNumber,
    required Function(PhoneAuthCredential) verificationCompleted,
    required Function(FirebaseAuthException) verificationFailed,
    required Function(String, int?) codeSent,
    required Function(String) codeAutoRetrievalTimeout,
  });

  Future<UserCredential> signInWithCredential(AuthCredential credential);

  Future<String> getCurrentUserUid();

  Future<bool> isSignIn();

  Future<void> signOut();
}
