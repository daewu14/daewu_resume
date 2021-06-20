
/// createdby Daewu Bintara
/// Sunday, 20/06/21

part of 'x_parts.dart';

class XThemeMode extends Cubit<ThemeMode> {
  XThemeMode(ThemeMode initialState) : super(initialState);

  /// Set theme mode
  void setThemeMode(ThemeMode mode) {
    if (mode == ThemeMode.dark) {
      preferences.setString(THEME_MODE, 'D');
    } else {
      preferences.setString(THEME_MODE, 'L');
    }
    emit(mode);
  }

}