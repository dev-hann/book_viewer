import 'package:fluent_ui/fluent_ui.dart';
import 'package:desktop_drop/desktop_drop.dart' as drop;

class DropFile extends StatelessWidget {
  const DropFile({
    super.key,
    required this.onDragDone,
    required this.child,
  });

  final drop.OnDragDoneCallback onDragDone;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return drop.DropTarget(
      onDragDone: onDragDone,
      child: child,
    );
  }
}
