// ignore: unused_import
import 'dart:async';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  //constructor
  CalculatorBloc(
      {required String mathResult,
      required String firstNumber,
      required String secondNumber,
      required String operation})
      : super(CalculatorState());

  @override
  Stream<CalculatorState> mapEventToState(
    CalculatorEvent event,
  ) async* {
    if (event is ResetAC) {
      yield CalculatorState(
          //primer numero
          firstNumber: '0',
          //resultado de la calculadora
          mathResult: '0',
          //segundo numero
          secondNumber: '0',
          //operacion
          operation: 'none');
    } else if (event is AddNumber) {
      yield state.copyWith(
        mathResult: (state.mathResult == '0')
            ? event.number
            : state.mathResult + event.number,
      );
    }
  }
}
