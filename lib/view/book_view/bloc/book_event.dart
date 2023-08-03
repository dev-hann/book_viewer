part of 'book_bloc.dart';

abstract class BookEvent extends Equatable {
  const BookEvent();
}

class BookEventInited extends BookEvent {
  const BookEventInited();

  @override
  List<Object?> get props => [];
}

class BookEventFileOpen extends BookEvent {
  const BookEventFileOpen(this.path);
  final String path;

  @override
  List<Object?> get props => [path];
}
