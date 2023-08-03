import 'package:book_viewer/view/book_view/bloc/book_bloc.dart';
import 'package:book_viewer/view/home_view/bloc/home_bloc.dart';
import 'package:book_viewer/view/home_view/home_view.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HomeBloc()),
        BlocProvider(create: (_) => BookBloc()),
      ],
      child: FluentApp(
        title: 'book Viewer',
        debugShowCheckedModeBanner: false,
        theme: FluentThemeData.dark(),
        home: const HomeView(),
      ),
    );
  }
}
