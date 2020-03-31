import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/ui/home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Localized App',
      home: Home(),

      /* These delegates make sure that the localization
       data for the proper language is loaded */

      localizationsDelegates: [
        // THIS CLASS WILL BE ADDED LATER
        // A class which loads the translations from json files
        //
        AppLocalizations.delegate,
        // Built-In localization of basics text for Material Widgets
        GlobalMaterialLocalizations.delegate,
        // BUilt-In localizations for text direction LTR/RTL
        GlobalWidgetsLocalizations.delegate,
      ],
      // List all of the supported locales here
      supportedLocales: [
        const Locale("en", "US"),
        const Locale("sw", ""),
      ],

      localeResolutionCallback: (locale, supportedLocales) {
        //Check if the current device locale is supported
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
          // If the locale of the device is not supported, use the first one
          // from the list (English, in this case).

          return supportedLocale.first;
        }
      },
    ));
