import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchCompanyTextFieldWidget extends StatefulWidget {
  const SearchCompanyTextFieldWidget(
      {Key? key,
      required this.hintText,
      required this.textInputType,
      required this.textController,
      required this.onPressed})
      : super(key: key);
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController textController;
  final VoidCallback onPressed;

  @override
  SearchCompanyTextFieldWidgetState createState() =>
      SearchCompanyTextFieldWidgetState();
}

class SearchCompanyTextFieldWidgetState
    extends State<SearchCompanyTextFieldWidget> {
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
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          controller: widget.textController,
          keyboardType: widget.textInputType,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: widget.onPressed, icon: const Icon(Icons.search)),
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
