import 'package:flutter/material.dart';

pushNavigation(context, Widget widget) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => widget));
}

popNavigation(context, Widget widget) {
  Navigator.of(context).pop();
}

pushRemoveUntilNavigation(context, Widget widget) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx) => widget), (route) => false);
}

pushReplacementNavigation(context, Widget widget) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (ctx) => widget));
}
