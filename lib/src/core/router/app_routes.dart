part of 'app_router.dart';

List<AutoRoute> get appRoutes => [
  AutoRoute(page: OnboardingRoute.page, initial: true),
];

CustomRoute _buildCustomRoute({
  bool initial = false,
  required PageInfo page,
  List<AutoRoute>? children,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
  transitionsBuilder,
  Duration? duration,
}) => CustomRoute(
  initial: initial,
  page: page,
  transitionsBuilder: transitionsBuilder ?? TransitionsBuilders.fadeIn,
  duration: duration ?? const Duration(milliseconds: 500),
  children: children,
);
