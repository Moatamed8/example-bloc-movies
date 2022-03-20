import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  // this function for get cubit
  static CounterCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  int counter = 0;

  void incrementNumber() {
    counter++;
    emit(CounterIncrementState());
  }

  void decrementNumber() {
    counter--;
    emit(CounterDecrementState());
  }
}
