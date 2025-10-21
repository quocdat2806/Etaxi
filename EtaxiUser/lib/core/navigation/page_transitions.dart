import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum PageTransitionType { fade, slideRight, slideLeft, slideUp, slideDown, scale, none }

class PageTransitions {
  static Page<T> fadeTransition<T extends Object?>({required BuildContext context, required GoRouterState state, required Widget child, Duration duration = const Duration(milliseconds: 300)}) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  static Page<T> slideTransition<T extends Object?>({required BuildContext context, required GoRouterState state, required Widget child, Duration duration = const Duration(milliseconds: 300), Offset begin = const Offset(1.0, 0.0), Offset end = Offset.zero}) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(begin: begin, end: end).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
          child: child,
        );
      },
    );
  }

  static Page<T> scaleTransition<T extends Object?>({required BuildContext context, required GoRouterState state, required Widget child, Duration duration = const Duration(milliseconds: 300)}) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
          child: child,
        );
      },
    );
  }

  static Page<T> slideUpTransition<T extends Object?>({required BuildContext context, required GoRouterState state, required Widget child, Duration duration = const Duration(milliseconds: 300)}) {
    return slideTransition<T>(context: context, state: state, child: child, duration: duration, begin: const Offset(0.0, 1.0), end: Offset.zero);
  }

  static Page<T> slideDownTransition<T extends Object?>({required BuildContext context, required GoRouterState state, required Widget child, Duration duration = const Duration(milliseconds: 300)}) {
    return slideTransition<T>(context: context, state: state, child: child, duration: duration, begin: const Offset(0.0, -1.0), end: Offset.zero);
  }

  static Page<T> slideLeftTransition<T extends Object?>({required BuildContext context, required GoRouterState state, required Widget child, Duration duration = const Duration(milliseconds: 300)}) {
    return slideTransition<T>(context: context, state: state, child: child, duration: duration, begin: const Offset(-1.0, 0.0), end: Offset.zero);
  }

  static Page<T> slideRightTransition<T extends Object?>({required BuildContext context, required GoRouterState state, required Widget child, Duration duration = const Duration(milliseconds: 300)}) {
    return slideTransition<T>(context: context, state: state, child: child, duration: duration, begin: const Offset(1.0, 0.0), end: Offset.zero);
  }

  static Page<T> noTransition<T extends Object?>({required BuildContext context, required GoRouterState state, required Widget child}) {
    return MaterialPage<T>(key: state.pageKey, child: child);
  }

  static Page<T> getTransition<T extends Object?>({required BuildContext context, required GoRouterState state, required Widget child, required PageTransitionType transitionType, Duration duration = const Duration(milliseconds: 300)}) {
    switch (transitionType) {
      case PageTransitionType.fade:
        return fadeTransition<T>(context: context, state: state, child: child, duration: duration);
      case PageTransitionType.slideRight:
        return slideRightTransition<T>(context: context, state: state, child: child, duration: duration);
      case PageTransitionType.slideLeft:
        return slideLeftTransition<T>(context: context, state: state, child: child, duration: duration);
      case PageTransitionType.slideUp:
        return slideUpTransition<T>(context: context, state: state, child: child, duration: duration);
      case PageTransitionType.slideDown:
        return slideDownTransition<T>(context: context, state: state, child: child, duration: duration);
      case PageTransitionType.scale:
        return scaleTransition<T>(context: context, state: state, child: child, duration: duration);
      case PageTransitionType.none:
        return noTransition<T>(context: context, state: state, child: child);
    }
  }
}
