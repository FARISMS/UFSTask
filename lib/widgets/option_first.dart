import 'package:flutter/cupertino.dart';

class ListOption extends StatelessWidget {
  final String text;

  const ListOption(
      {super.key,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 35,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ),
      ),
    );
  }
}
