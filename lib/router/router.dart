import 'package:ceva_app/screens/egg_injector_screen.dart';
import 'package:ceva_app/screens/home_screen.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/egg_injector': (context) => const EggInjectorScreen(),
};
