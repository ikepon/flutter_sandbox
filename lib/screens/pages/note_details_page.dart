import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NoteDetailsPage extends StatelessWidget {
  const NoteDetailsPage({super.key, @PathParam('id') required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NoteDetails'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'NoteDetails Page: id: $id ${RouteData.of(context).pathParams}',
              ),
            ],
          ),
        ));
  }
}
