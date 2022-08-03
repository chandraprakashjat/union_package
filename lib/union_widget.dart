import 'package:flutter/material.dart';
part './operation/operation.dart';

class UnionTypeWidget extends StatelessWidget {
  const UnionTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Union Operation Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () => createUnion(), child: const Text('Create Union'))
        ],
      ),
    );
  }
}
