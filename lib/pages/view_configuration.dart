import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sliver_blur/utils/utils.dart';

part 'home_view.dart';
part 'other_view.dart';
part 'pay_view.dart';
part 'bottom_bar.dart';

enum ViewIndex {
  home(0),
  pay(1),
  other(2);

  final int id;

  const ViewIndex(this.id);
}

final viewItems = [
  const HomeView(),
  const PayView(),
  const OtherView(),
];

const bottomItems = [
  BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: 'Pay', icon: Icon(Icons.credit_card)),
  BottomNavigationBarItem(label: 'Other', icon: Icon(Icons.more_horiz)),
];
