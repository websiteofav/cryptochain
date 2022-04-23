import 'package:shared_preferences/shared_preferences.dart';
 

// void loadThemeData() async {
//     SharedPreferences.getInstance().then((SharedPreferences sp) async {
//         SharedPreferences sharedPreferences;

//       sharedPreferences = sp;
//       final isDarkValue = await sharedPreferences.getBool('isDark');
//       if(isDarkValue == null){
//         await sharedPreferences.setBool('isDark', false);
//         isDark = false;
//         Provider.of<ThemeNotifier>(context, listen: false).onThemeChange(isDark);
//       }else{
//         isDark = isDarkValue;
//         Provider.of<ThemeNotifier>(context, listen: false).onThemeChange(isDark);
//       }
//     });
//   }