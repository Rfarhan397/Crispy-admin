
import 'package:crispy_admin/provider/passwpordVisibility/passwordVisibilityProvider.dart';
import 'package:crispy_admin/provider/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'model/res/routes/routes.dart';
import 'model/res/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeLanguageProvider()),
        ChangeNotifierProvider(create: (_) => PasswordVisibilityProvider()),

      ],
      child: Sizer(
          builder: (context, orientation, deviceType) {
            return  GetMaterialApp(
              theme: ThemeData(
                  scaffoldBackgroundColor: Colors.white
              ),
              debugShowCheckedModeBanner: false,
              title: 'Crispy Talk Amin',
              initialRoute: RoutesName.splashScreen,
              getPages: Routes.routes,
            );
          }
      ),
    );


  }
}

class MediaSelectionProvider {
}

