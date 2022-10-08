// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: LoginPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DashboardPage(),
      );
    },
    EmptyRouterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    NoteListRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<NoteListRouteArgs>(
          orElse: () => NoteListRouteArgs(test: queryParams.optString('test')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: NoteListPage(
          key: args.key,
          test: args.test,
        ),
      );
    },
    NoteDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NoteDetailsRouteArgs>(
          orElse: () => NoteDetailsRouteArgs(id: pathParams.getInt('id')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: NoteDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        RouteConfig(
          DashboardRoute.name,
          path: '/dashboard-page',
        ),
        RouteConfig(
          EmptyRouterRoute.name,
          path: '/notes',
          children: [
            RouteConfig(
              NoteListRoute.name,
              path: '',
              parent: EmptyRouterRoute.name,
            ),
            RouteConfig(
              NoteDetailsRoute.name,
              path: ':id',
              parent: EmptyRouterRoute.name,
            ),
          ],
        ),
        RouteConfig(
          '/redirect#redirect',
          path: '/redirect',
          redirectTo: '/notes',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: '/dashboard-page',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [EmptyRouterPage]
class EmptyRouterRoute extends PageRouteInfo<void> {
  const EmptyRouterRoute({List<PageRouteInfo>? children})
      : super(
          EmptyRouterRoute.name,
          path: '/notes',
          initialChildren: children,
        );

  static const String name = 'EmptyRouterRoute';
}

/// generated route for
/// [NoteListPage]
class NoteListRoute extends PageRouteInfo<NoteListRouteArgs> {
  NoteListRoute({
    Key? key,
    String? test,
  }) : super(
          NoteListRoute.name,
          path: '',
          args: NoteListRouteArgs(
            key: key,
            test: test,
          ),
          rawQueryParams: {'test': test},
        );

  static const String name = 'NoteListRoute';
}

class NoteListRouteArgs {
  const NoteListRouteArgs({
    this.key,
    this.test,
  });

  final Key? key;

  final String? test;

  @override
  String toString() {
    return 'NoteListRouteArgs{key: $key, test: $test}';
  }
}

/// generated route for
/// [NoteDetailsPage]
class NoteDetailsRoute extends PageRouteInfo<NoteDetailsRouteArgs> {
  NoteDetailsRoute({
    Key? key,
    required int id,
  }) : super(
          NoteDetailsRoute.name,
          path: ':id',
          args: NoteDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'NoteDetailsRoute';
}

class NoteDetailsRouteArgs {
  const NoteDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'NoteDetailsRouteArgs{key: $key, id: $id}';
  }
}
