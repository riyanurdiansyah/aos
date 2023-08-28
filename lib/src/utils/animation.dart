import 'package:flutter/material.dart';

class TranslateUpToDownAnimation extends StatelessWidget {
  const TranslateUpToDownAnimation({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 0),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
      builder: (context, value, child) => Transform.translate(
        offset: Offset(0, 10 * value),
        child: child,
      ),
      child: child,
    );
  }
}
