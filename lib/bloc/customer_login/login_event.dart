part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}
class Fetchlogin extends LoginEvent {
final String phoneNumber ;
Fetchlogin({required this.phoneNumber});
}