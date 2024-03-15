part of 'fecilities_bloc.dart';

@immutable
sealed class FecilitiesState {}

class FecilitiesInitial extends FecilitiesState {}
class FecilitiesblocLoading extends FecilitiesState {}
class FecilitiesblocLoaded extends FecilitiesState {}
class FecilitiesblocError extends FecilitiesState {}