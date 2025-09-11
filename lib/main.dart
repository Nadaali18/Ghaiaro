import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ghaiaro/Core/Routes/routes.dart';

void main() {
 runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const Ghaiaro(), // Wrap your app
  ));
}

class Ghaiaro extends StatelessWidget {
  const Ghaiaro({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routerConfig: Routes.routes, 
    );
  }
}
