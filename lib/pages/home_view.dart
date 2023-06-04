part of 'view_configuration.dart';

class HomeView extends HookWidget {
  const HomeView({super.key});
  static String url = 'http://spsms.dyndns.org:3100/images/face/face38.jpg';

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        pinned: true,
        collapsedHeight: kToolbarHeight * 1.5,
        expandedHeight: 200.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Image(image: CachedNetworkImageProvider(url)),
        ),
        title: Text(ViewIndex.home.toString()),
      ),
      SliverFillRemaining(
        child: SizedBox.expand(
          child: Container(
              alignment: Alignment.center,
              color: Colors.amber,
              child: Text(ViewIndex.home.toString())),
        ),
      )
    ]);
  }

  List<Widget> _headerBuilder(
    BuildContext context,
    bool innerBoxIsScrolled,
  ) {
    return [
      const SliverAppBar(
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar()),
    ];
  }
}
