import 'package:gaytri_s_application3/core/app_export.dart';
import 'package:gaytri_s_application3/presentation/getting_started_page_flutter_pg_screen/models/getting_started_page_flutter_pg_model.dart';

/// A controller class for the GettingStartedPageFlutterPgScreen.
///
/// This class manages the state of the GettingStartedPageFlutterPgScreen, including the
/// current gettingStartedPageFlutterPgModelObj
class GettingStartedPageFlutterPgController extends GetxController {
  Rx<GettingStartedPageFlutterPgModel> gettingStartedPageFlutterPgModelObj =
      GettingStartedPageFlutterPgModel().obs;
}
