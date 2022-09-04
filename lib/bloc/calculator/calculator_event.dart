part of 'calculator_bloc.dart';

//eventos a esperar
@immutable
abstract class CalculatorEvent {}

class Reset extends CalculatorEvent {}

class addNumber extends CalculatorEvent {
  final String number;
  addNumber(this.number);
}
