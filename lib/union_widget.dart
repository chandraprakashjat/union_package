import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:union/union.dart';

part './operation/operation.dart';

class UnionTypeWidget extends StatelessWidget {
  const UnionTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Union Operation Demo'),
      ),
      body: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
          _createWidget('Create Union', createUnion),
          _createWidget('Union Type', createUnion),
          _createWidget('Compare Union', createUnion),
          _createWidget('Copy Union', createUnion),
        ],
      ),
    );
  }

  _createWidget(String title, Function function) {
    return TextButton(onPressed: () => function, child: Text(title));
  }
}
