/// createdby Daewu Bintara
/// Sunday, 20/06/21

part of 'x_parts.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    if (!Utils.isMobileView(context)) {
      return Container();
    }

    itemIconSosmed({IconData? icon, Function? onTap}) {
      return InkWell(
        child: Padding(
          padding: EdgeInsets.all(spaceS),
          child: Icon(icon),
        ),
        onTap: (){
          onTap!();
        },
      );
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: spaceM),
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: themeData().primaryColor
            ),
            padding: EdgeInsets.all(spaceXS*1.2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image.asset(AssetsImages.profile,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text("Daewu Gus Bintara Putra",
            style: themeData().textTheme.headline3?.copyWith(
              fontWeight: FontWeight.bold
            ),
          ),
          Text("Mobile Developer",
            style: themeData().textTheme.headline4?.copyWith(
              fontStyle: FontStyle.italic
            ),
          ),
          GridView.count(
            padding: EdgeInsets.only(top: spaceM),
            crossAxisCount: 4,
            shrinkWrap: true,
            childAspectRatio: 2.5,
            children: [
              Tooltip(
                message: 'Instagram',
                child: itemIconSosmed(
                  icon: FontAwesomeIcons.instagram,
                  onTap: (){
                    MainHomeAction.openInstagram();
                  }
                ),
              ),
              Tooltip(
                message: 'LinkedIn',
                child: itemIconSosmed(
                  icon: FontAwesomeIcons.linkedin,
                  onTap: (){
                    MainHomeAction.openLinkedIn();
                  }
                ),
              ),
              Tooltip(
                message: 'Github',
                child: itemIconSosmed(
                  icon: FontAwesomeIcons.github,
                  onTap: (){
                    MainHomeAction.openGithub();
                  }
                ),
              ),
              Tooltip(
                message: 'facebook',
                child: itemIconSosmed(
                  icon: FontAwesomeIcons.facebook,
                  onTap: (){
                    MainHomeAction.openFacebook();
                  }
                ),
              ),
            ],
          ),
          Material(
            child: InkWell(
              onTap: (){
                if (isDarkMode()) {
                  context.read<XThemeMode>().setThemeMode(ThemeMode.light);
                } else {
                  context.read<XThemeMode>().setThemeMode(ThemeMode.dark);
                }
              },
              child: Padding(
                padding: EdgeInsets.all(spaceM),
                child: Row(
                  children: [
                    Expanded(child: Text("Change Theme",
                      style: themeData().textTheme.subtitle1,
                    )),
                    SizedBox(width: spaceM),
                    Icon(Icons.wb_sunny_outlined)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Item button
  _itemButtonMore({String? text, Function? onTap, IconData? icon = FontAwesomeIcons.github}) {
    return Padding(
      padding: EdgeInsets.only(top: spaceM),
      child: MaterialButton(
        elevation: 0,
        color: themeData().backgroundColor,
        child: Container(
          width: double.maxFinite,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: spaceM),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: spaceM),
              Expanded(
                  child: text != tutup ? Text(text!) : Text(text!).tr()
              )
            ],
          ),
        ),
        onPressed: () {
          onTap!();
        },
      ),
    );
  }

}
