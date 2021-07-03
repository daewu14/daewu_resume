part of 'x_parts.dart';

/// createdby Daewu Bintara
/// Saturday, 03/07/21

class SkillCubit extends Cubit<double>{
  SkillCubit() : super(0.0);

  void calculate() async {
    await Future.delayed(Duration(microseconds: 5));
    emit(state+1);
  }

}