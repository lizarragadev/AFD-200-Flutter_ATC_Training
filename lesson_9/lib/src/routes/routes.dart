
class RoutePaths {
  static const loginPage = "login";
  static const registerPage = "register";
  static const homePage = "home";
  static const addNotePage = "addNote";
  static const addContactPage = "addContact";
}

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case RoutePaths.loginPage: return MaterialPageRoute(builder: (context) => LoginPage());
      case RoutePaths.registerPage: return MaterialPageRoute(builder: (context) => RegisterPage());
      case RoutePaths.homePage: return MaterialPageRoute(builder: (context) => HomePage());
      case RoutePaths.addNotePage: return MaterialPageRoute(builder: (context) => AddNotePage());
      case RoutePaths.addContactPage: return MaterialPageRoute(builder: (context) => AddContactPage());
      default: return MaterialPageRoute(builder: (context) => ErrorPage());
    }
  }
}