// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.selectedIndex = 0,
  });
  final int selectedIndex;

  @override
  List<Object> get props => [
        selectedIndex,
      ];

  HomeState copyWith({
    int? selectedIndex,
  }) {
    return HomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
