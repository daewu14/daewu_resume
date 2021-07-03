part of '../x_parts.dart';
/// createdby Daewu Bintara
/// Saturday, 03/07/21

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  /// Custom Divider Widget
  Widget _divider(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(
      horizontal: Utils.isMobileView(context) ? 80 : 200,
      vertical: spaceM
    ),
    height: 2,
    color: themeData().primaryColor,
  );

  /// Item About Me Widget
  Widget _itemAboutMe({String? title, String? info, IconData? icon, BuildContext? context}) => Padding(
    padding: EdgeInsets.symmetric(
        horizontal: Utils.isMobileView(context!) ? spaceL : 200,
        vertical: spaceM
    ),
    child: Row(
      children: [
        Icon(icon, size: 18,),
        SizedBox(width: spaceL),
        Text("$title",
          style: themeData().textTheme.subtitle1?.copyWith(
            fontWeight: FontWeight.bold
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: SelectableText("$info",
              style: themeData().textTheme.subtitle1,
            ),
          ),
        ),
      ],
    ),
  );

  /// Item Education Widget
  Widget _itemEducation({String? year, String? title, String? info, BuildContext? context, bool isTheEnd = false}) => Padding(
    padding: EdgeInsets.symmetric(
        horizontal: Utils.isMobileView(context!) ? spaceL : 200,
        vertical: 0
    ),
    child: Column(
      children: [
        isTheEnd ? Row(
          children: [
            SizedBox(
              width: 100,
              child: Text("$year",
                style: themeData().textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.transparent
                ),
              ),
            ),
            SizedBox(width: spaceM+3.8),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(spaceS),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: themeData().primaryColor,
                  ),
                  child: Icon(FontAwesomeIcons.graduationCap, size: 12, color: Colors.white),
                ),
                Container(
                    height: 20,
                    width: 2,
                    color: themeData().primaryColor
                )
              ],
            ),
          ],
        ) : Container(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              child: Text("$year",
                style: themeData().textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(width: spaceL),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: 5,
                    width: 2,
                    color: themeData().primaryColor
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: themeData().primaryColor
                  ),
                ),
                Container(
                    height: Utils.isMobileView(context) ? 170 : 80,
                    width: 2,
                    color: themeData().primaryColor
                )
              ],
            ),
            SizedBox(width: spaceL),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$title",
                    style: themeData().textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("$info",
                    style: themeData().textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: spaceXXL
      ),
      child: Column(
        children: [
          Text("About Me",
            style: themeData().textTheme.headline2?.copyWith(
                fontWeight: FontWeight.bold
            ), textAlign: TextAlign.center,
          ),
          _divider(context),
          _itemAboutMe(
            context: context,
            icon: FontAwesomeIcons.addressBook,
            title: "Name",
            info: "Daewu Gus Bintara Putra"
          ),
          _itemAboutMe(
            context: context,
            icon: FontAwesomeIcons.calendar,
            title: "Date of birth",
            info: "August 14th 1996"
          ),
          _itemAboutMe(
            context: context,
            icon: FontAwesomeIcons.phone,
            title: "Phone",
            info: "+62 882 2635 6860"
          ),
          _itemAboutMe(
            context: context,
            icon: FontAwesomeIcons.envelopeOpenText,
            title: "Email",
            info: "daewu.bintara1996@gmail.com"
          ),
          _itemAboutMe(
            context: context,
            icon: FontAwesomeIcons.map,
            title: "Address",
            info: "Yogyakarta, Indonesia"
          ),
          SizedBox(height: spaceS),
          Text("My Recent Education",
            style: themeData().textTheme.headline2?.copyWith(
                fontWeight: FontWeight.bold
            ), textAlign: TextAlign.center,
          ),
          _divider(context),
          SizedBox(height: spaceM),
          _itemEducation(
            context: context,
            year: "2015 - 2019",
            title: "Bachelor Degree / Institut Teknologi Dirgantara Adisutjipto",
            info: "Bachelor Degree of Informatic Enginering from Institut Teknologi Dirgantara Adisutjipto.",
            isTheEnd: true
          ),
          _itemEducation(
            context: context,
            year: "2011 - 2014",
            title: "Senior High School / SMA N 2 Ngaglik",
            info: "Science major from SMA N 2 Ngaglik. Start learning graphic design using CorelDraw",
            isTheEnd: false
          ),
          SizedBox(height: spaceS),
        ],
      ),
    );
  }
}
