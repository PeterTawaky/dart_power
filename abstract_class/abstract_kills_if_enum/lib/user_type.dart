import 'enum_users.dart';

abstract class UserType {
 void getUserType();
}
class Admin implements UserType{
  @override
  void getUserType() {
      print("Admin");
  }
}
class Customer implements UserType{
  @override
  void getUserType() {
      print("Customer");
  }
}
class Driver implements UserType{
  @override
  void getUserType() {
      print("Driver");
  }
}
class GuestUser implements UserType{
  @override
  void getUserType() {
      print("Guest User");
  }
}
class Marketing implements UserType{
  @override
  void getUserType() {
      print("Marketing");
  }
}
class Manager implements UserType{
  @override
  void getUserType() {
      print("Manager");
  }
}
class Sales implements UserType{
  @override
  void getUserType() {
      print("Sales");
  }
}
class Support implements UserType{
  @override
  void getUserType() {
      print("Support");
  }
}
