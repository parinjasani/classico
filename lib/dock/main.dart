import 'package:flutter/material.dart';

/// Entrypoint of the application.
void main() {
  runApp(const MyApp());
}

/// [Widget] building the [MaterialApp].
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Dock(
            items: const [
              Icons.person,
              Icons.message,
              Icons.call,
              Icons.camera,
              Icons.photo,
            ],
            builder: (e) {
              return Container(
                constraints: const BoxConstraints(minWidth: 48),
                height: 48,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.primaries[e.hashCode % Colors.primaries.length],
                ),
                child: Center(child: Icon(e, color: Colors.white)),
              );
            },
          ),
        ),
      ),
    );
  }
}

/// Dock of the reorderable [items].
class Dock<T> extends StatefulWidget {
  const Dock({
    super.key,
    this.items = const [],
    required this.builder,
  });

  /// Initial [T] items to put in this [Dock].
  final List<T> items;

  /// Builder building the provided [T] item.
  final Widget Function(T) builder;

  @override
  State<Dock<T>> createState() => _DockState<T>();
}

/// State of the [Dock] used to manipulate the [_items].
class _DockState<T> extends State<Dock<T>> {
  /// [T] items being manipulated.
  late List<T> _items = widget.items.toList();

  int? _draggingIndex;
  bool _isOutsideContainer = false;
  final GlobalKey _containerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      key: _containerKey,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black12,
      ),
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(_items.length, (index) {
          return _buildDraggableItem(index);
        }),
      ),
    );
  }

  /// Builds a draggable item with animated slot transitions.
  Widget _buildDraggableItem(int index) {
    final item = _items[index];

    return LongPressDraggable<int>(
      data: index,
      feedback: Material(
        color: Colors.transparent,
        child: widget.builder(item),
      ),
      childWhenDragging: const SizedBox.shrink(),
      onDragStarted: () {
        setState(() {
          _draggingIndex = index;
          _isOutsideContainer = false; // Reset state when dragging starts
        });
      },
      onDraggableCanceled: (velocity, offset) {
        setState(() {
          _draggingIndex = null;
          _isOutsideContainer = false;
        });
      },
      onDragUpdate: (details) {
        // Check if the drag position is outside the container
        final containerBox = _containerKey.currentContext?.findRenderObject() as RenderBox?;
        if (containerBox != null) {
          final containerPosition = containerBox.localToGlobal(Offset.zero);
          final containerSize = containerBox.size;
          final dragPosition = details.globalPosition;

          final isOutside = !(dragPosition.dx >= containerPosition.dx &&
              dragPosition.dx <= containerPosition.dx + containerSize.width &&
              dragPosition.dy >= containerPosition.dy &&
              dragPosition.dy <= containerPosition.dy + containerSize.height);

          if (isOutside != _isOutsideContainer) {
            setState(() {
              _isOutsideContainer = isOutside;
            });
          }
        }
      },
      onDragEnd: (details) {
        setState(() {
          _draggingIndex = null;
          _isOutsideContainer = false;
        });
      },
      child: DragTarget<int>(
        builder: (context, candidateData, rejectedData) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: widget.builder(item),
          );
        },
        onAccept: (fromIndex) {
          setState(() {
            final movedItem = _items.removeAt(fromIndex);
            _items.insert(index, movedItem);
          });
        },
      ),
    );
  }
}
