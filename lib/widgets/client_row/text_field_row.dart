import 'package:flutter/material.dart';
import 'package:web_test/model/company_details_model_api.dart';

class TextFieldRowWidget extends StatefulWidget {
  const TextFieldRowWidget(
      {Key? key, required this.hintText, required this.companyName})
      : super(key: key);
  final String hintText;
  final Data companyName;

  @override
  TextFieldRowWidgetState createState() => TextFieldRowWidgetState();
}

class TextFieldRowWidgetState extends State<TextFieldRowWidget> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(15),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: SizedBox(
        width: 400,
        child: TextFormField(
          controller: myController,
          textInputAction: TextInputAction.next,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          onFieldSubmitted: (String value) {
            FocusScope.of(context).unfocus();
          },
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
            labelText: widget.hintText,
          ),
        ),
      ),
    );
  }
}
