part of 'view_configuration.dart';

class MainBottomBar extends HookWidget {
  const MainBottomBar({
    super.key,
    required this.selected,
  });

  final ValueNotifier<int> selected;

  @override
  Widget build(BuildContext context) {
    useListenable(selected);

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: 16.0.circular,
        topRight: 16.0.circular,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0,
        ),
        child: Opacity(
          opacity: 0.7,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: selected.value,
            elevation: 0,
            items: bottomItems,
            onTap: (value) => selected.value = value,
          ),
        ),
      ),
    );
  }
}
