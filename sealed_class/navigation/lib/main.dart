sealed class NavigationEvent {}

class NavigationToHome extends NavigationEvent {}

class NavigationToProfile extends NavigationEvent {
  final String userId;

  NavigationToProfile(this.userId);
}

void handleNavigation(NavigationEvent event){
  if (event is  NavigationToHome){
    print('Navigating to Home');
  }else if (event is NavigationToProfile){
    print('Navigating to Profile for user ${event.userId}');
  }
}
void main() {
  handleNavigation(NavigationToHome());
  handleNavigation(NavigationToProfile('20200067'));
}