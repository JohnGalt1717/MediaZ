import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mediaz/localizations/AppLocalizations.dart';
import 'package:mediaz/main/dependancy_injection.dart';
import 'package:mediaz/pages/home/home_page.dart';
import 'package:mediaz/preferences/preferences_cubit.dart';
import 'package:mediaz/preferences/preferences_state.dart';
import 'package:mediaz/themes/app_themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  await configureServices();
  runApp(MediaZApp());
}

class MediaZApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt.allReady(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return BlocProvider(
              create: (context) => getIt.get<PreferencesCubit>(),
              child: BlocBuilder<PreferencesCubit, PreferencesState>(
                  buildWhen: (previous, current) =>
                      previous.theme != current.theme,
                  builder: (context, themeState) => MaterialApp(
                        title: 'MediaZ',
                        supportedLocales: [Locale('en', 'US')],
                        localizationsDelegates: [
                          // A class which loads the translations from JSON files
                          AppLocalizations.delegate,
                          // Built-in localization of basic text for Material widgets
                          GlobalMaterialLocalizations.delegate,
                          // Built-in localization for text direction LTR/RTL
                          GlobalWidgetsLocalizations.delegate,
                        ],
                        localeResolutionCallback: (locale, supportedLocales) {
                          // Check if the current device locale is supported
                          for (var supportedLocale in supportedLocales) {
                            if (supportedLocale.languageCode ==
                                    locale.languageCode &&
                                supportedLocale.countryCode ==
                                    locale.countryCode) {
                              return supportedLocale;
                            }
                          }
                          // If the locale of the device is not supported, use the first one
                          // from the list (English, in this case).
                          return supportedLocales.first;
                        },
                        darkTheme: DarkTheme,
                        theme: LightTheme,
                        themeMode: themeState.theme == null
                            ? ThemeMode.system
                            : themeState.theme == AppTheme.dark
                                ? ThemeMode.dark
                                : ThemeMode.light,
                        home: HomePage(),
                      )),
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
