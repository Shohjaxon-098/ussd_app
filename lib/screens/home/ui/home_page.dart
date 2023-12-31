import 'package:ussd_app/utils/tools/file_importants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
            height: height(context),
            width: width(context),
            child: DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(
                        child: Image.asset(AppImages.mobiUzLogo),
                      ),
                      Tab(
                        child: Image.asset(
                          AppImages.uzmobile,
                        ),
                      ),
                      Tab(
                        child: Image.asset(AppImages.ucellLogo),
                      ),
                      Tab(
                        child: Image.asset(AppImages.beelineLogo),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      Container(
                        height: height(context) * 0.9,
                        color: Colors.red,
                        child: Column(children: [
                          FlutterCarousel(items: [], options: CarouselOptions(height: 400,showIndicator: true,slideIndicator: CircularSlideIndicator()))
                        ]),
                      ),
                      Container(
                        child: Text("Uzmobile"),
                      ),
                      Container(
                        child: Text("Ucell"),
                      ),
                      Container(
                        child: Text("Beeline"),
                      ),
                    ]),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
