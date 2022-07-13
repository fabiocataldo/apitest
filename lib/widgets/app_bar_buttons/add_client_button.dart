import 'package:flutter/material.dart';

class AddClientButton extends StatelessWidget {
  const AddClientButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: const [
          Icon(Icons.add_circle),
          SizedBox(
            width: 8,
          ),
          Text('ADD NEW CLIENT'),
        ],
      ),
    );
  }
}
