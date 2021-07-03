part of 'x_parts.dart';
/// createdby Daewu Bintara
/// Saturday, 03/07/21

class ItemSkill extends StatelessWidget {
  final double? value;
  final String? title;
  const ItemSkill({Key? key, this.value, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SkillCubit, double>(
      builder: (_, state) {

        if (state < value!) {
          context.read<SkillCubit>().calculate();
        }

        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Utils.isMobileView(context) ? spaceL : 200,
              vertical: spaceM
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$title",
                style: themeData().textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: spaceS),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      padding: EdgeInsets.all(spaceM),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          minHeight: 10,
                          value: state/100,
                          valueColor: AlwaysStoppedAnimation<Color>(themeData().primaryColor),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    alignment: Alignment.centerRight,
                    child: Text("$value%",
                      style: themeData().textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

