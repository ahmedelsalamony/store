import 'package:store/core/service/shared_prefs/prefs_keys.dart';
import 'package:store/core/service/shared_prefs/shared_pref.dart';

class FontFamilyHelper {
  static const String poppins = 'Poppins';
  static const String cairo = 'Cairo';

  const FontFamilyHelper._();

  static String getLocalizedFontFamily() {
    final prefs = SharedPref.sharedPreferences.getString(PrefsKeys.language);
    if (prefs == 'ar') {
      return cairo;
    } else {
      return poppins;
    }
  }
}
