// ignore: unused_import
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  //constructor
  CalculatorBloc() : super(CalculatorState());

  @override
  Stream<CalculatorState> mapEventToState(CalculatorEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
