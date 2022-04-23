import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class CounterCubit extends Cubit<AppState> {
  CounterCubit() : super(AppInitialState());

  static CounterCubit get(context)=> BlocProvider.of(context);

  int counter=0;
  void incrementCounter() {
    counter++;
    print("counter= $counter");
    emit(AppChangeCounter());
  }
  void decrementCounter() {
    counter--;
    print("counter= $counter");
    emit(AppChangeCounterMinus());
  }

  void restartCounter() {
    counter=0;
    print("counter= 0");
    emit(AppChangeCounter());
  }
}
