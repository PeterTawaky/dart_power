import 'enum_users.dart';
import 'user_type.dart';

void main() {
  UserType userType = GuestUser();
  getUserType(userType);
}

void getUserType(UserType userType) {
  userType.getUserType();
}
// void getUserType(users user) {
//   switch (user) {
//     case users.admin:
//       print("Admin");
//       break;
//     case users.marketing:
//       print("Marketing");
//       break;
//     case users.sales:
//       print("Sales");
//       break;
//     case users.customer:
//       print("Customer");
//       break;
//     case users.driver:
//       print("Driver");
//       break;
//     case users.guestUser:
//       print("Guest User");
//       break;
//     case users.manager:
//       print("Manager");
//       break;
//     case users.support:
//       print("Support");
//   }
// }
