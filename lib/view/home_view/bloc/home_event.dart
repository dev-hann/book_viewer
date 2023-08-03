part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomeEventInited extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class HomeEventChangedPage extends HomeEvent {
  const HomeEventChangedPage(this.index);
  final int index;
  @override
  List<Object> get props => [
        index,
      ];
}
