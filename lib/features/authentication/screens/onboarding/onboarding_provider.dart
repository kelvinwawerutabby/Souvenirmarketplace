import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingControllerProvider extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool toured = false;
  bool get doneTour => toured;
  void validDoneTour() async {
    final SharedPreferences prefs = await _prefs;
    var touredv = prefs.getInt('tour') ?? 0;
    if (touredv == 1) {
      toured = true;
    }
    else{
      toured = false;
    }
  }
}
