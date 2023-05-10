import 'package:classico/navigation-routing-navigator/navigator-object/user.dart';
import 'package:classico/navigation-routing-navigator/ongenerate/screen/error-screen.dart';
import 'package:classico/navigation-routing-navigator/ongenerate/screen/first-screen.dart';
import 'package:classico/navigation-routing-navigator/ongenerate/screen/second-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const firstscreen='/';
  static const secondscreen='/second';
  static const thirdscreen='/third';

  static Route<dynamic>? generateRoute(RouteSettings settings)
  {
    String? name=settings.name;
    var arguments=settings.arguments;
    switch(name)
        {
      case firstscreen:
        return MaterialPageRoute(builder: (context) => FirstScreen(),);
      case secondscreen:
        if (arguments is User)
          {
            User user = arguments as User;
            return MaterialPageRoute(builder: (context) => SecondScreen(user),
            );
          }
        else{
          return MaterialPageRoute(builder: (context) => ErrorScreen(),);
        }
      default:
        return MaterialPageRoute(builder: (context) => ErrorScreen(),);
    }
  }
}