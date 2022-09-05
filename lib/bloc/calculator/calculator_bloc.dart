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

    //Borrar todo
    if (event is ResetAC) {
      yield* this._resetAC();

    //agregar numeros
    } else if (event is AddNumber) {
      yield state.copyWith(
        mathResult: (state.mathResult == '0')
            ? event.number
            : state.mathResult + event.number,
      );
      //Cambiar signo de + o -
    } else if (event is ChangeNegativePositive){
      yield state.copyWith(
        mathResult:  state.mathResult.contains('-')
                    ? state.mathResult.replaceFirst('-', '')
                    : '-' + state.mathResult

      );

      //Borrar ultimo digito
    } else if (event is DeleteLasEntry){
      yield state.copyWith(
        mathResult:  state.mathResult.length > 1
                    ? state.mathResult.substring(0, state.mathResult.length=1)
                    : '0'
    };
  }

  //
  Stream<CalculatorState> _resetAC() async* {
    yield CalculatorState(
        //primer numero
        firstNumber: '0',
        //resultado de la calculadora
        mathResult: '0',
        //segundo numero
        secondNumber: '0',
        //operacion
        operation: 'none');
  }
}
