part of 'x_parts.dart';

/// createdby Daewu Bintara
/// Saturday, 03/07/21

class MainNavigation extends StatelessWidget {
  const MainNavigation({Key? key}) : super(key: key);

  /// Item Navigation for Desktop Mode
  Widget _itemNavDestop({String? text, IconData? icon, int? index}) => Expanded(
    child: BlocBuilder<NavigationCubit, int>(
      builder: (_, state) => GestureDetector(
        onTap: (){
          _.read<NavigationCubit>().setIndex(index: index!);
        },
        child: Container(
          color: state == index
              ? Colors.transparent
              : Colors.black12,
          padding: EdgeInsets.all(spaceL),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon),
                SizedBox(width: spaceL),
                Text(text!,
                  style: themeData().textTheme.headline3,
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );

  /// Item Navigation for Mobile Mode
  Widget _itemNavMobile({IconData? icon, int? index}) => Expanded(
    child: BlocBuilder<NavigationCubit, int>(
      builder: (_, state) => GestureDetector(
        onTap: (){
          _.read<NavigationCubit>().setIndex(index: index!);
        },
        child: Container(
          color: state == index
              ? Colors.transparent
              : Colors.black12,
          padding: EdgeInsets.all(spaceM),
          child: Center(
            child: Icon(icon),
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {

    if (Utils.isMobileView(context)) {
      return Row(
        children: [
          _itemNavMobile(
              index: 0,
              icon: FontAwesomeIcons.columns
          ),
          _itemNavMobile(
              index: 1,
              icon: FontAwesomeIcons.addressCard
          ),
          _itemNavMobile(
              index: 2,
              icon: FontAwesomeIcons.newspaper
          ),
          _itemNavMobile(
              index: 3,
              icon: FontAwesomeIcons.addressBook
          ),
        ],
      );
    }

    return Row(
      children: [
        _itemNavDestop(
          index: 0,
          text: "Welcome",
          icon: FontAwesomeIcons.columns
        ),
        _itemNavDestop(
          index: 1,
          text: "Profile",
          icon: FontAwesomeIcons.addressCard
        ),
        _itemNavDestop(
          index: 2,
          text: "Resume",
          icon: FontAwesomeIcons.newspaper
        ),
        _itemNavDestop(
          index: 3,
          text: "Contact",
          icon: FontAwesomeIcons.addressBook
        ),
      ],
    );
  }
}
