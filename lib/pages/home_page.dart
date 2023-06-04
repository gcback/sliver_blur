import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../utils/utils.dart';
import 'view_configuration.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  static String title = 'Home';

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: 0);
    final bottom = useState(pageController.initialPage);

    useEffectOnce(() {
      bottom.addListener(
        () => pageController.jumpToPage(bottom.value),
      );
    });

    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: pageController,
        onPageChanged: (value) => bottom.value = value,
        children: viewItems,
      ),
      bottomNavigationBar: MainBottomBar(selected: bottom),
    );
  }
}
