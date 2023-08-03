import 'package:book_viewer/view/book_view/book_view.dart';
import 'package:book_viewer/view/home_view/bloc/home_bloc.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeBloc get bloc => BlocProvider.of(context);

  @override
  void initState() {
    super.initState();
    bloc.add(HomeEventInited());
  }

  NavigationAppBar appBar() {
    return const NavigationAppBar(
      automaticallyImplyLeading: false,
      title: Text("AppBar"),
    );
  }

  NavigationPane pane({
    required int selectedIndex,
  }) {
    return NavigationPane(
      size: const NavigationPaneSize(
        openMaxWidth: 280.0,
      ),
      selected: selectedIndex,
      onChanged: (index) {
        bloc.add(
          HomeEventChangedPage(index),
        );
      },
      items: [
        PaneItem(
          body: const BookView(),
          title: const Text("Book"),
          icon: const Icon(FluentIcons.bookmarks),
        ),
        PaneItem(
          body: const Text("History"),
          title: const Text("History"),
          icon: const Icon(FluentIcons.history),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return NavigationView(
          appBar: appBar(),
          pane: pane(
            selectedIndex: state.selectedIndex,
          ),
          // content: Text("Hello"),
        );
      },
    );
  }
}
