import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:epub_view/epub_view.dart';
import 'package:equatable/equatable.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc() : super(const BookState()) {
    on<BookEventInited>(_onInited);
    on<BookEventFileOpen>(_onFileOpened);
  }

  FutureOr<void> _onInited(BookEventInited event, Emitter<BookState> emit) {}

  FutureOr<void> _onFileOpened(
      BookEventFileOpen event, Emitter<BookState> emit) {
    emit(
      state.copyWith(
        controller: EpubController(
          document: EpubDocument.openFile(
            File(event.path),
          ),
        ),
      ),
    );
  }
}
