import 'package:flutter/material.dart';

class NoteDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NoteDetails'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'NoteDetails Page',
              ),
            ],
          ),
        ));
  }
}
