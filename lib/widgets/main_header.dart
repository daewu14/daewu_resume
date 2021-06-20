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
          // Container(
          //   width: 130,
          //   height: 130,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(70),
          //       color: themeData().primaryColor
          //   ),
          //   padding: EdgeInsets.all(spaceXS*1.2),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(70),
          //     child: Image.asset(AssetsImages.profile,
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          // Text("Daewu Gus Bintara Putra",
          //   style: themeData().textTheme.headline3?.copyWith(
          //     fontWeight: FontWeight.bold
          //   ),
          // ),
          // Text("Mobile Developer",
          //   style: themeData().textTheme.headline4?.copyWith(
          //     fontStyle: FontStyle.italic
          //   ),
          // ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            childAspectRatio: 2.5,
            children: [
              itemIconSosmed(
                icon: FontAwesomeIcons.instagram,
                onTap: (){
                  MainHomeAction.openInstagram();
                }
              ),
              itemIconSosmed(
                icon: FontAwesomeIcons.linkedin,
                onTap: (){
                  MainHomeAction.openLinkedIn();
                }
              ),
              itemIconSosmed(
                icon: FontAwesomeIcons.github,
                onTap: (){
                  MainHomeAction.openGithub();
                }
              ),
              itemIconSosmed(
                icon: FontAwesomeIcons.facebook,
                onTap: (){
                  MainHomeAction.openFacebook();
                }
              ),
            ],
          )
        ],
      ),
    );
  }
}
