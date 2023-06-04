import 'dart:math';
import 'dart:ui';

import 'package:flutter_hooks/flutter_hooks.dart';

extension NumUtils on num {
  get radians => this * (pi / 180.0);
  get degrees => this * (180.0 / pi);
  get secs => Duration(seconds: this as int);
  get msecs => Duration(milliseconds: this as int);
  get fix3 => (this as double).toStringAsFixed(3);
  get fix2 => (this as double).toStringAsFixed(2);
  get circular => Radius.circular(this as double);
}

void useEffectOnce(void Function() callback) => useEffect(() {
      callback();
      return null;
    }, []);
