import 'package:flutter/material.dart';
import '../../model/office_details_model.dart';

class OfficerNameWidget extends StatelessWidget {
  final DataOfficeDetails? data;

  const OfficerNameWidget({Key? key, this.data})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController(text: '${data?.items[1].name}');

    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(15),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: SizedBox(
        child: TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
            labelText: "Officer Name",
          ),
          controller: myController,
        ),
      ),
    );
  }
}
