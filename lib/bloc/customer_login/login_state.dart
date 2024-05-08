part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class LoginblocLoading extends LoginState {}
final class LoginblocLoaded extends LoginState {}
final class LoginblocError extends LoginState {}
