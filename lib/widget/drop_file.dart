import 'package:fluent_ui/fluent_ui.dart';
import 'package:desktop_drop/desktop_drop.dart' as drop;

class DropFile extends StatelessWidget {
  const DropFile({super.key});

  @override
  Widget build(BuildContext context) {
    return drop.DropTarget(
      onDragDone: (details) {
        details.files.forEach((element) {
          print(element.path);
        });
      },
      child: Text("Drag File"),
    );
  }
}
