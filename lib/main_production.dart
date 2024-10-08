import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/di/dependency_injection.dart';
import 'package:flutter_advanced_course/core/routing/app_router.dart';
import 'package:flutter_advanced_course/doc_app.dart';

void main() async {
  setUpGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DocApp(appRouter: AppRouter(),));
}