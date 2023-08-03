import 'package:book_viewer/view/book_view/bloc/book_bloc.dart';
import 'package:book_viewer/widget/drop_file.dart';
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
          return const DropFile();
        }
        return ScaffoldPage.withPadding(
          content: const Center(
            child: Text("!!"),
          ),
        );
      },
    );
  }
}
