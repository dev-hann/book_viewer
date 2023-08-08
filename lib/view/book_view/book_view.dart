import 'package:book_viewer/view/book_view/bloc/book_bloc.dart';
import 'package:book_viewer/widget/drop_file.dart';
import 'package:epub_view/epub_view.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookView extends StatefulWidget {
  const BookView({super.key});

  @override
  State<BookView> createState() => _BookViewState();
}

class _BookViewState extends State<BookView> {
  BookBloc get bloc => BlocProvider.of(context);

  @override
  void initState() {
    super.initState();
    bloc.add(const BookEventInited());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookBloc, BookState>(
      builder: (context, state) {
        final controller = state.controller;
        if (controller == null) {
          return DropFile(
            onDragDone: (details) {
              bloc.add(BookEventFileOpen(details.files.first.path));
            },
            child: const Center(
              child: Text("Drag File"),
            ),
          );
        }
        return ScaffoldPage.withPadding(
          content: EpubView(
            controller: state.controller!,
          ),
        );
      },
    );
  }
}
