/// createdby Daewu Bintara
/// Sunday, 20/06/21

part of 'x_parts.dart';

class MainSIde extends StatefulWidget {
  const MainSIde({Key? key}) : super(key: key);

  @override
  _MainSIdeState createState() => _MainSIdeState();
}

class _MainSIdeState extends State<MainSIde> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    if (Utils.isMobileView(context)) {
      return Container();
    }

    return BlocBuilder<SelectorCubit<bool>, bool>(builder: (_, isShowMoreMenu) {

      /// Item button
      itemButtonMore({String? text, Function? onTap, IconData? icon = FontAwesomeIcons.github}) {
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

      return Container(
        child: Stack(
          children: [
            Image.asset(
              AssetsImages.profile,
              fit: BoxFit.cover,
              width: Utils.size(context).width / 3.5,
              height: double.maxFinite,
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: isShowMoreMenu
                  ? ClipRRect(
                      key: UniqueKey(),
                      child: SizedBox(
                        width: Utils.size(context).width / 3.5,
                        height: double.maxFinite,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: SizedBox(
                            width: Utils.size(context).width / 3.5,
                            height: double.maxFinite,
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ),
            Container(
              width: Utils.size(context).width / 3.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.0),
                  Colors.transparent
                ],
              )),
              padding:
                  EdgeInsets.fromLTRB(spaceL, spaceL, spaceL, spaceXXL * 4),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.view_list_rounded),
                    onPressed: () {
                      context
                          .read<SelectorCubit<bool>>()
                          .setValue(!isShowMoreMenu);
                    },
                    tooltip: more,
                    color: Colors.white,
                  ),
                  SizedBox(width: spaceL),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Daewu Gus Bintara Putra",
                        style: themeData().textTheme.headline2?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Mobile Developer",
                        style: themeData().textTheme.headline4?.copyWith(
                            color: Colors.white, fontStyle: FontStyle.italic),
                      )
                    ],
                  ))
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: AnimatedSize(
                vsync: this,
                duration: Duration(milliseconds: 300),
                reverseDuration: Duration(milliseconds: 300),
                child: !isShowMoreMenu
                    ? Container()
                    : Material(
                        // borderRadius:
                        //     BorderRadius.vertical(bottom: Radius.circular(10)),
                        elevation: 2,
                        child: Padding(
                          padding: EdgeInsets.all(spaceM),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Also find me on",
                                style: themeData().textTheme.headline1,
                              ),
                              SizedBox(height: spaceM),
                              itemButtonMore(
                                  icon: FontAwesomeIcons.github,
                                  text: "Github",
                                  onTap: () {
                                    MainHomeAction.openGithub();
                                    context
                                        .read<SelectorCubit<bool>>()
                                        .setValue(!isShowMoreMenu);
                                  }),
                              itemButtonMore(
                                  icon: FontAwesomeIcons.facebook,
                                  text: "Facebook",
                                  onTap: () {
                                    MainHomeAction.openFacebook();
                                    context
                                        .read<SelectorCubit<bool>>()
                                        .setValue(!isShowMoreMenu);
                                  }),
                              itemButtonMore(
                                  icon: FontAwesomeIcons.instagram,
                                  text: "Instagram",
                                  onTap: () {
                                    MainHomeAction.openInstagram();
                                    context
                                        .read<SelectorCubit<bool>>()
                                        .setValue(!isShowMoreMenu);
                                  }),
                              itemButtonMore(
                                  icon: FontAwesomeIcons.linkedin,
                                  text: "LinkedIn",
                                  onTap: () {
                                    MainHomeAction.openLinkedIn();
                                    context
                                        .read<SelectorCubit<bool>>()
                                        .setValue(!isShowMoreMenu);
                                  }),
                              Divider(),
                              Text("Preference",
                                style: themeData().textTheme.headline1,
                              ),
                              itemButtonMore(
                                  icon: FontAwesomeIcons.sun,
                                  text: "Change theme",
                                  onTap: () {
                                    if (isDarkMode()) {
                                      context.read<XThemeMode>().setThemeMode(ThemeMode.light);
                                    } else {
                                      context.read<XThemeMode>().setThemeMode(ThemeMode.dark);
                                    }
                                  }),
                              Divider(),
                              itemButtonMore(
                                  icon: FontAwesomeIcons.windowClose,
                                  text: tutup,
                                  onTap: () {
                                    context
                                        .read<SelectorCubit<bool>>()
                                        .setValue(!isShowMoreMenu);
                                  }),
                            ],
                          ),
                        ),
                      ),
              ),
            )
          ],
        ),
      );
    });
  }
}
