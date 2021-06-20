/// createdby Daewu Bintara
/// Thursday, 4/8/21

part of 'x_parts.dart';

class SelectorCubit<T> extends Cubit<T> {
  SelectorCubit(T initialState) : super(initialState);

  void setValue(T t) {
    emit(t);
  }

}
