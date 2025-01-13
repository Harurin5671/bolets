import 'package:flutter/material.dart';

enum AlertType {
  success,
  error,
  info,
  warning,
}

class AlertHelper {
  static void show({
    required BuildContext context,
    required String message,
    AlertType type = AlertType.success,
    Duration duration = const Duration(seconds: 3),
    VoidCallback? onClose,
  }) {
    Color backgroundColor;
    IconData icon;
    TextTheme textTheme = Theme.of(context).textTheme;

    switch (type) {
      case AlertType.success:
        backgroundColor = Colors.green;
        icon = Icons.check_circle;
        break;
      case AlertType.error:
        backgroundColor = Colors.red;
        icon = Icons.error;
        break;
      case AlertType.info:
        backgroundColor = Colors.blue;
        icon = Icons.info;
        break;
      case AlertType.warning:
        backgroundColor = Colors.orange;
        icon = Icons.warning;
        break;
    }

    ScaffoldMessenger.of(context)
        .showSnackBar(
          SnackBar(
            backgroundColor: backgroundColor,
            behavior: SnackBarBehavior.floating,
            content: Row(
              children: [
                Icon(icon, color: Colors.white),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    message,
                    style: textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            duration: duration,
            elevation: 8,
            margin: const EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        )
        .closed
        .then(
      (_) {
        if (onClose != null) {
          onClose();
        }
      },
    );
  }
}
