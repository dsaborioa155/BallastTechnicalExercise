import 'package:auto_route/auto_route.dart';
import 'package:ballast_technical_exercise/presentation/routes/router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    if (isLoggedIn) {
      resolver.next();
    } else {
      router.replace(const LoginRoute());
    }
  }
}
