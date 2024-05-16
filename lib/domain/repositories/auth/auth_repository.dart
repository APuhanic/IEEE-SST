abstract class AuthenticationRepository {
  Future signInWithEmailAndPassword(String email, String password);
  Future signUpWithEmailAndPassword(String email, String password);
  Future signOut();
  Future isSignedIn();
  Future<String> getUser();
}
