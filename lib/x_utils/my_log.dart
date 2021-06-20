/// createdby Daewu Bintara
/// Sunday, 20/06/21

part of 'x_parts.dart';

void debugLog(String TAG, String message) {
  if (kDebugMode) log("$TAG => ${message.toString()}", name: "My Awesome App");
}