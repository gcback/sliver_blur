part of 'view_configuration.dart';

class PayView extends HookWidget {
  const PayView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text(ViewIndex.other.toString())),
    );
  }
}
