part of 'book_bloc.dart';

class BookState extends Equatable {
  const BookState({
    this.controller,
  });
  final EpubController? controller;

  @override
  List<Object?> get props => [
        controller,
      ];

  BookState copyWith({
    EpubController? controller,
  }) {
    return BookState(
      controller: controller ?? this.controller,
    );
  }
}
