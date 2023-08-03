import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEventInited>(_onInited);
    on<HomeEventChangedPage>(_onChangedPage);
  }

  FutureOr<void> _onInited(HomeEventInited event, Emitter<HomeState> emit) {}

  FutureOr<void> _onChangedPage(
      HomeEventChangedPage event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        selectedIndex: event.index,
      ),
    );
  }
}
