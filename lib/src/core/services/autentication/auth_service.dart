abstract class AuthService {
  Future<void> signInWithEmail(String email, String password);
  Future<void> signInWithGoogle();
  Future<void> signInWithApple();
  Future<void> signUp(String email, String password);
  Future<void> signOut();
  bool get isSignedIn;
}
