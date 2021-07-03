part of '../x_parts.dart';
/// createdby Daewu Bintara
/// Saturday, 03/07/21

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: spaceXXL
      ),
      child: Column(
        children: [
          Text("Hello, I\'am",
            style: themeData().textTheme.headline2?.copyWith(
              fontWeight: FontWeight.bold
            ), textAlign: TextAlign.center,
          ),
          SizedBox(height: spaceM),
          Text("Daewu Gus Bintara Putra",
            style: themeData().textTheme.headline1?.copyWith(
              fontWeight: FontWeight.bold
            ), textAlign: TextAlign.center,
          ),
          SizedBox(height: spaceS),
          Text("Mobile Developer",
            style: themeData().textTheme.headline2?.copyWith(
            ), textAlign: TextAlign.center,
          ),
          SizedBox(height: spaceM),
          Text("A mobile-developer from Yogyakarta, Indonesia",
            style: themeData().textTheme.subtitle1?.copyWith(
              fontStyle: FontStyle.italic
            ), textAlign: TextAlign.center,
          ),
          // Text("I always do my best to work on projects",
          //   style: themeData().textTheme.subtitle1?.copyWith(
          //     fontStyle: FontStyle.italic
          //   ), textAlign: TextAlign.center,
          // ),
          SizedBox(height: spaceL),
          SelectableText("+62 882 2635 6860",
            style: themeData().textTheme.headline3?.copyWith(
              fontWeight: FontWeight.bold
            ),
          ),
          SelectableText("daewu.bintara1996@gmail.com",
            style: themeData().textTheme.headline3,
          ),
          SizedBox(height: spaceL),
          ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              side: MaterialStateProperty.all(BorderSide(
                width: 1,
                color: Colors.grey,
              )),
              backgroundColor: MaterialStateProperty.all(Colors.transparent)
            ),
            onPressed: () {
              Utils.intentOpenUrl(link: "https://drive.google.com/file/d/1f0DVjWluuAa_u-wN83VSJ1QWPZnRTCUR/view?usp=sharing");
            },
            child: Text("Download CV",
              style: themeData().textTheme.subtitle1,
            )
          ),
          SizedBox(height: spaceL),
        ],
      ),
    );
  }
}
