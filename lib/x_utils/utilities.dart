/// createdby Daewu Bintara
/// Monday, 3/15/21

part of 'x_parts.dart';

class Utils {

  static Size size(@required BuildContext context) => MediaQuery.of(context).size;

  static bool isMobileView(@required BuildContext context) =>
      (size(context).width + 100) <= size(context).height;

  static void intentOpenUrl({String link = "https://google.com"}) async {
    final url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}