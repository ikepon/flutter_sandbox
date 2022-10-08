import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sandbox/screens/pages/dashboard_page.dart';
import 'package:flutter_sandbox/screens/pages/home_page.dart';
import 'package:flutter_sandbox/screens/pages/login_page.dart';
import 'package:flutter_sandbox/screens/pages/note_details_page.dart';
import 'package:flutter_sandbox/screens/pages/note_list_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: DashboardPage),
    AutoRoute(path: '/notes', page: EmptyRouterPage, children: [
      AutoRoute(path: '', page: NoteListPage),
      AutoRoute(path: ':id', page: NoteDetailsPage),
    ]),
    RedirectRoute(path: '/redirect', redirectTo: '/notes')
  ],
)
class AppRouter extends _$AppRouter {}
