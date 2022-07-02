import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_state.dart';

enum ConnectionStatus {
  connected,
  disconnected,
}

class InternetCubit extends Cubit<InternetState> {
  InternetCubit({required this.connectivity}) : super(InternetLoading()) {
    connStreamSubscription =
        connectivity.onConnectivityChanged.listen((connResult) {
      if (connResult == ConnectivityResult.wifi ||
          connResult == ConnectivityResult.mobile) {
        emit(InternetConnected(connectionStatus: ConnectionStatus.connected));
      } else if (connResult == ConnectivityResult.none) {
        emit(InternetDisconnected());
      }
    });
  }
  late StreamSubscription<ConnectivityResult> connStreamSubscription;
  final Connectivity connectivity;

  void internetConnected(ConnectionStatus connection) =>
      emit(InternetConnected(connectionStatus: connection));

  void internetDisconnected() => emit(InternetDisconnected());

  @override
  Future<void> close() {
    connStreamSubscription.cancel();
    return super.close();
  }
}
