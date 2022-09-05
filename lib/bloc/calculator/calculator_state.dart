part of 'calculator_bloc.dart';

class CalculatorState {
  final String mathResult;
  final String firstNumber;
  final String secondNumber;
  final String operation;

  CalculatorState(
      {this.mathResult = '30',
      this.firstNumber = '10',
      this.secondNumber = '20',
      this.operation = '+'});

  // metodo devuelve un nueVo estado de la calculadora

  CalculatorBloc copyWith({
    String? mathResult,
    String? firstNumber,
    String? secondNumber,
    String? operation,
  }) =>
      CalculatorBloc(
        mathResult: mathResult ?? this.mathResult,
        firstNumber: firstNumber ?? this.mathResult,
        secondNumber: secondNumber ?? this.mathResult,
        operation: operation ?? this.mathResult,
      );
}
