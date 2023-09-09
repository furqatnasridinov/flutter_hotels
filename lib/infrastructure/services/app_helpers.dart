import 'package:flutter/widgets.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AppHelpers {
  AppHelpers._();

  static void showNoConnectionSnack(BuildContext context) {
    showTopSnackBar(
      Overlay.of(context),
      const CustomSnackBar.error(
        message: "Проверьте интернет соеденение",
      ),
    );
  }

  static void showErrorSnack(BuildContext context) {
    showTopSnackBar(
      Overlay.of(context),
      const CustomSnackBar.error(
        message:
            "Ошибка при загрузки данных",
      ),
    );
  }
}
