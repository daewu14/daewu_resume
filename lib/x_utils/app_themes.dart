/// createdby Daewu Bintara
/// Sunday, 20/06/21

part of 'x_parts.dart';

final _primaryColor = Color(0xFF5ce1e6);
final _accentColor = Color(0xFFe6c65c);
final _backgroundColorLight = Colors.grey.shade200;
final _backgroundColorDark = Color(0xFF4f4f4f);

/// THEME MODE CODE
final String _themeModeLight = 'L';
final String _themeModeDark = 'D';

/// Fony Family
final String _fontFamily = 'TitilliumWeb';

/// Setup theme data
ThemeData themeData() => isDarkMode() ? darkTheme() : lightTheme();

/// text color
Color _textColor() => isDarkMode() ? Colors.white : Colors.black;

/// Text Theme
TextTheme _textTheme() => TextTheme(
  headline1: TextStyle(fontSize: 26, color: _textColor()),
  headline2: TextStyle(fontSize: 23, color: _textColor()),
  headline3: TextStyle(fontSize: 20, color: _textColor()),
  subtitle1: TextStyle(fontSize: 16, color: _textColor()),
  caption: TextStyle(fontSize: 13, color: _textColor())
);

/// light theme
ThemeData lightTheme() => ThemeData(
    primaryColor: _primaryColor,
    accentColor: _accentColor,
    fontFamily: _fontFamily,
    brightness: Brightness.light,
    backgroundColor: _backgroundColorLight,
    textTheme: _textTheme()
);

/// dark theme
ThemeData darkTheme() => ThemeData(
    primaryColor: _primaryColor,
    accentColor: _accentColor,
    fontFamily: _fontFamily,
    brightness: Brightness.dark,
    backgroundColor: _backgroundColorDark,
    textTheme: _textTheme()
);

/// get Theme Mode
ThemeMode themeMode() => isDarkMode() ? ThemeMode.dark : ThemeMode.light;

/// Check is Dark Mode
bool isDarkMode() {
  String? md = preferences.getString(THEME_MODE);
  return (md == _themeModeDark);
}

