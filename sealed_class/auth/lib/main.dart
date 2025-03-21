sealed class AuthState {}

class Authenticated extends AuthState {
  final String userId;
  final String email;

  Authenticated(this.userId, this.email);
}

class UnAuthenticated extends AuthState {}

class AuthLoading extends AuthState {}

void handleAuthState(AuthState state) {
  switch (state) {
    case Authenticated(
      :String userId,
      :String email,
    ): //to get the value and use it or even you can access it through state.userId/state.email
      print('Authenticated with user:$userId and email:$email');
      break;
    case UnAuthenticated():
      print('UnAuthenticated');
      break;
    case AuthLoading():
      print('AuthLoading');
      break;
  }
}

void main() {
  AuthState currentState = AuthLoading();
  handleAuthState(currentState);

  currentState = Authenticated('123', '9TzQ7@example.com');
  handleAuthState(currentState);

  currentState = UnAuthenticated();
  handleAuthState(currentState);
}
