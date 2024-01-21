import '../controller/getting_started_page_flutter_pg_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GettingStartedPageFlutterPgScreen.
///
/// This class ensures that the GettingStartedPageFlutterPgController is created when the
/// GettingStartedPageFlutterPgScreen is first loaded.
class GettingStartedPageFlutterPgBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GettingStartedPageFlutterPgController());
  }
}
