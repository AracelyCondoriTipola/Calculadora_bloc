part of 'calculator_bloc.dart';

//eventos a esperar
@immutable
abstract class CalculatorEvent {}

class ResetAC extends CalculatorEvent {}

class AddNumber extends CalculatorEvent {
  final String number;
  AddNumber(this.number);
}

class ChangeNegativePositive extends CalculatorEvent {}

class DeleteLasEntry extends CalculatorEvent {}
