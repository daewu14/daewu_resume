part of '../x_parts.dart';

/// createdby Daewu Bintara
/// Saturday, 03/07/21


class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  /// Custom Divider Widget
  Widget _divider(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(
        horizontal: Utils.isMobileView(context) ? 80 : 200,
        vertical: spaceM
    ),
    height: 2,
    color: themeData().primaryColor,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: spaceXXL
      ),
      child: Column(
        children: [
          Text("My Contact",
            style: themeData().textTheme.headline2?.copyWith(
                fontWeight: FontWeight.bold
            ), textAlign: TextAlign.center,
          ),
          _divider(context),
          SizedBox(height: spaceL),
          Container(
            height: 400,
            padding: EdgeInsets.symmetric(
              horizontal: Utils.isMobileView(context)
                  ? spaceM : spaceXL
            ),
            child: MyGmap()
          ),
          SizedBox(height: spaceM),
          Text("Sleman, D.I. Yogyakarta, Indonesia",
            style: themeData().textTheme.headline3?.copyWith(
                fontWeight: FontWeight.bold
            ), textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(spaceM),
            child: SelectableText("Karang RT 003 RW 020, Widodomartani, Ngemplak, Sleman, Yogyakarta\n55584",
              style: themeData().textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(spaceM),
            child: SelectableText("+62 882 2635 6860 | daewu.bintara1996@gmail.com",
              style: themeData().textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
