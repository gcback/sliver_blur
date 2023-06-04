part of 'view_configuration.dart';

class OtherView extends HookWidget {
  const OtherView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: Text(ViewIndex.other.toString())),
    );
  }
}
