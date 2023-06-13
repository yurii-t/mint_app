import 'package:firebase_auth/firebase_auth.dart';
import 'package:mint_app/data/data.dart';

class AuthGatewayImpl implements AuthGateway {
  const AuthGatewayImpl({required this.auth});
  final FirebaseAuth auth;

  @override
  Future<String> getCurrentUserUid() async => await auth.currentUser?.uid ?? '';
  @override
  Future<bool> isSignIn() async => await auth.currentUser?.uid != null;
  @override
  Future<void> signOut() async => auth.signOut();
  @override
  Future<void> verifyPhone({
    required String phoneNumber,
    required Function(PhoneAuthCredential) verificationCompleted,
    required Function(FirebaseAuthException) verificationFailed,
    required Function(String, int?) codeSent,
    required Function(String) codeAutoRetrievalTimeout,
  }) async {
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  @override
  Future<UserCredential> signInWithCredential(AuthCredential credential) async {
    return auth.signInWithCredential(credential);
  }
}
