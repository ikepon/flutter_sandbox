import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NoteListPage extends StatelessWidget {
  NoteListPage({super.key, @QueryParam('test') this.test});

  final String? test;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NoteList'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'NoteList Page: $test: \n${RouteData.of(context).queryParams}',
              ),
            ],
          ),
        ));
  }
}
