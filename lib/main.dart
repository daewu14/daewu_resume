import 'package:cvdaewu/cubits/x_parts.dart';
import 'package:cvdaewu/x_routes/routes.dart';
import 'package:cvdaewu/x_utils/x_parts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await PreferenceInstance();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('id', 'ID')],
        path: 'assets/translations',
        fallbackLocale: Locale('id', 'ID'),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => XThemeMode(themeMode()),
        )
      ],
      child: BlocBuilder<XThemeMode, ThemeMode>(
        builder: (_, mode){
          return MaterialApp(
            title: 'Daewu Resume',
            theme: lightTheme(),
            darkTheme: darkTheme(),
            themeMode: mode,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            onGenerateRoute: Routes.generate,
            initialRoute: RouterName.main,
          );
        },
      ),
    );
  }
}
