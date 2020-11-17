import 'package:flutter/material.dart';
import 'package:hts_test_app/ui/core/styles.dart';
import 'package:hts_test_app/ui/core/ui_config.dart';
import 'package:hts_test_app/ui/screens/dropdwon_local_test/dropdown_local_screen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
      child: MaterialApp(
        title: UIConfig.app_name,
        debugShowCheckedModeBanner: false,
        //TODO: Change entry screen here to test your view
        home: DropdownLocalScreen(),
        theme: ThemeData.light().copyWith(
          primaryColor: kPrimaryColor,
          accentColor: kSecondaryColor,
          backgroundColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor:  kPrimaryColor,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
