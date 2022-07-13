import 'package:flutter/material.dart';

class DeleteClientButton extends StatelessWidget {
  const DeleteClientButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: const [
          Icon(Icons.do_not_disturb_on_outlined),
          SizedBox(
            width: 8,
          ),
          Text('DELETE')
        ],
      ),
    );
  }
}
