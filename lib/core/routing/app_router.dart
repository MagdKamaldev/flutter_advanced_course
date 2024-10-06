import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/di/dependency_injection.dart';
import 'package:flutter_advanced_course/core/routing/routes.dart';
import 'package:flutter_advanced_course/features/home/ui/home_screen.dart';
import 'package:flutter_advanced_course/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_course/features/login/ui/login_screen.dart';
import 'package:flutter_advanced_course/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:flutter_advanced_course/features/signup/manager/cubit/signup_cubit.dart';
import 'package:flutter_advanced_course/features/signup/ui/signup_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    final arguments = settings.arguments;
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
        case Routes.signUpScreen:
          return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
        case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text("no route defined for ${settings.name}")),));
    }
  }
}