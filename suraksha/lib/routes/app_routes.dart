import 'package:gaytri_s_application3/presentation/getting_started_page_flutter_pg_screen/getting_started_page_flutter_pg_screen.dart';
import 'package:gaytri_s_application3/presentation/getting_started_page_flutter_pg_screen/binding/getting_started_page_flutter_pg_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String gettingStartedPageFlutterPgScreen =
      '/getting_started_page_flutter_pg_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: gettingStartedPageFlutterPgScreen,
      page: () => GettingStartedPageFlutterPgScreen(),
      bindings: [
        GettingStartedPageFlutterPgBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => GettingStartedPageFlutterPgScreen(),
      bindings: [
        GettingStartedPageFlutterPgBinding(),
      ],
    )
  ];
}
