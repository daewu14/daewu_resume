part of '../x_parts.dart';
/// createdby Daewu Bintara
/// Saturday, 03/07/21

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  /// Custom Divider Widget
  Widget _divider(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(
        horizontal: Utils.isMobileView(context) ? 80 : 200,
        vertical: spaceM
    ),
    height: 2,
    color: themeData().primaryColor,
  );

  /// Experience Widget
  Widget _itemExperience({String? year, String? title, String? info, BuildContext? context, bool isTheEnd = false}) => Padding(
    padding: EdgeInsets.symmetric(
        horizontal: Utils.isMobileView(context!) ? spaceL : 200,
        vertical: 0
    ),
    child: Column(
      children: [
        isTheEnd ? Row(
          children: [
            SizedBox(
              width: 140,
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
                  child: Icon(FontAwesomeIcons.suitcase, size: 12, color: Colors.white),
                ),
                Container(
                    height: 25,
                    width: 2,
                    color: themeData().primaryColor
                ),
              ],
            ),
          ],
        ) : Container(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 140,
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
                  SizedBox(height: spaceM),
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
          Text("My Skill",
            style: themeData().textTheme.headline2?.copyWith(
                fontWeight: FontWeight.bold
            ), textAlign: TextAlign.center,
          ),
          _divider(context),
          BlocProvider(
            create: (_) => SkillCubit(),
            child: ItemSkill(
              title: "Dart",
              value: 90,
            ),
          ),
          BlocProvider(
            create: (_) => SkillCubit(),
            child: ItemSkill(
              title: "Java",
              value: 85,
            ),
          ),
          BlocProvider(
            create: (_) => SkillCubit(),
            child: ItemSkill(
              title: "PHP",
              value: 90,
            ),
          ),
          BlocProvider(
            create: (_) => SkillCubit(),
            child: ItemSkill(
              title: "Flutter",
              value: 90,
            ),
          ),
          BlocProvider(
            create: (_) => SkillCubit(),
            child: ItemSkill(
              title: "MySql",
              value: 85,
            ),
          ),
          BlocProvider(
            create: (_) => SkillCubit(),
            child: ItemSkill(
              title: "Laravel",
              value: 90,
            ),
          ),
          BlocProvider(
            create: (_) => SkillCubit(),
            child: ItemSkill(
              title: "Lumen",
              value: 85,
            ),
          ),
          BlocProvider(
            create: (_) => SkillCubit(),
            child: ItemSkill(
              title: "Android Framework",
              value: 85,
            ),
          ),
          BlocProvider(
            create: (_) => SkillCubit(),
            child: ItemSkill(
              title: "Xcode",
              value: 75,
            ),
          ),
          SizedBox(height: spaceL),
          Text("My Experience",
            style: themeData().textTheme.headline2?.copyWith(
                fontWeight: FontWeight.bold
            ), textAlign: TextAlign.center,
          ),
          _divider(context),
          SizedBox(height: spaceL),
          _itemExperience(
            context: context,
            isTheEnd: true,
            year: "Feb, 2019 - Present",
            title: "PT. Selalu Siap Solusi (Mobile Developer)",
            info: "Create Rest API, Build and Maintain Android Application, Build and Maintain IOS Application"
          ),
          _itemExperience(
            context: context,
            year: "Jul, 2018 - Aug, 2018",
            title: "PT. Aivon Mediatama (Front-end Web Developer)",
            info: "Build E-Commerce Web Application, Implementation Rest API"
          ),
          _itemExperience(
            context: context,
            year: "Jun, 2018 - Present",
            title: "Freelancer (Web and Mobile Developer)",
            info: "Create Database Structure, Create Design UI/UX Application, Build Web/Mobile Application"
          ),
        ],
      ),
    );
  }
}
