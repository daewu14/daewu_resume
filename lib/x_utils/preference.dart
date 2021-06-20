/// createdby Daewu Bintara
/// Sunday, 20/06/21

part of 'x_parts.dart';

SharedPreferences? _preferences;

// ignore: non_constant_identifier_names
Future PreferenceInstance() async {
  _preferences = await SharedPreferences.getInstance();
}

SharedPreferences preferences = _preferences!;

