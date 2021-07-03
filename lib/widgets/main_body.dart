part of 'x_parts.dart';
/// createdby Daewu Bintara
/// Saturday, 03/07/21

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (_, index) {

        switch (index) {
          case 0:
            return Welcome();
          case 1:
            return Profile();
          case 2:
            return Resume();
          case 3:
            return Contact();
        }

        return Container();
      },
    );
  }
}
