import 'package:guesstheword/app/modules/home/controllers/home_controller.dart';
import 'package:guesstheword/app/modules/home/views/home_view.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const home = 'Home';
  static List<QRoute> routes() => [
        QRoute(
          path: '/',
          builder: () => const HomeView(),
          middleware: [
            QMiddlewareBuilder(
              onEnterFunc: () async {
                Get.lazyPut<HomeController>(() => HomeController());
              },
              onExitFunc: () async {
                await Get.delete<HomeController>();
              },
            )
          ],
        ),
      ];
}
