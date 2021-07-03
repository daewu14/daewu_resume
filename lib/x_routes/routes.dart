import 'package:cvdaewu/cubits/x_parts.dart';
import 'package:cvdaewu/screens/x_parts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'router_name.dart';

/// createdby Daewu Bintara
/// Saturday, 19/06/21

class Routes {

  static Route<dynamic> generate(RouteSettings settings) {

    switch(settings.name){

      case RouterName.main :
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (_) => SelectorCubit<bool>(false), // Open/close sidebar more menus
                ),
                BlocProvider(
                  create: (_) => NavigationCubit(), // Open/close sidebar more menus
                )
              ],
              child: MainHome(),
            )
        );
      default :
        return MaterialPageRoute(
            builder: (_) => Container()
        );
    }
  }

}