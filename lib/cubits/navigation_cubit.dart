part of 'x_parts.dart';

/// createdby Daewu Bintara
/// Saturday, 03/07/21

class NavigationCubit extends Cubit<int>{
  NavigationCubit() : super(0);

  /// Set index
  void setIndex({int index = 0}){
    emit(index);
  }

}