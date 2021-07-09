import 'package:flutter/widgets.dart';
import 'package:marketplacemobile/core/dependency.injection/dependency.injection.dart';

mixin RoutMixin<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    Inject();
  }
}
