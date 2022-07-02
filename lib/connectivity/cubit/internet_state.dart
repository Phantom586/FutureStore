part of 'internet_cubit.dart';

@immutable
abstract class InternetState {}

class InternetLoading extends InternetState {}

class InternetConnected extends InternetState {
  InternetConnected({required this.connectionStatus});
  final ConnectionStatus connectionStatus;
}

class InternetDisconnected extends InternetState {}
