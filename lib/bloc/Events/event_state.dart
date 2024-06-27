part of 'event_bloc.dart';

@immutable
sealed class EventState {}

final class EventInitial extends EventState {}
