import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matule/core/router/router.dart';
import 'package:matule/core/zoom_drawer/async_drawe_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  Get.put<AsyncDraweController>(AsyncDraweController());
  runApp(
    EasyLocalization(
        child: App(),
        supportedLocales: [Locale('en', 'US'), Locale('ru', 'RU')],
        path: 'assets/localization',
        fallbackLocale: Locale('ru', 'RU')),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: router,
    );
  }
}
