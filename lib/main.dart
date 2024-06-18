import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';
import 'service/configure_dependencies.dart';
import 'service/di_instance.dart';

void main() async {
  await getIt.reset();
  configureDependencies(getIt);
  await getIt.allReady(timeout: Duration(seconds: 5));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Your Project Name',
      initialRoute: '/',
      getPages: Routes.routes,
    );
  }
}
