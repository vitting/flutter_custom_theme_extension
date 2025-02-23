import 'package:flutter_bloc/flutter_bloc.dart';

class SomeCubit extends Cubit<bool> {
  SomeCubit() : super(false);

  void setToTrue() {
    emit(true);
  }

  void setToFalse() {
    emit(false);
  }
}
