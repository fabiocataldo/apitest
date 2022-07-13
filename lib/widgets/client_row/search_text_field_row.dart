import 'package:flutter/material.dart';
import 'package:web_test/network/fetch_data.dart';
import 'package:web_test/widgets/client_row/company_name_widget.dart';

class SearchCompanyTextFieldWidget extends StatefulWidget {
  const SearchCompanyTextFieldWidget(
      {Key? key, required this.hintText, required this.textInputType})
      : super(key: key);
  final String hintText;
  final TextInputType textInputType;

  @override
  SearchCompanyTextFieldWidgetState createState() =>
      SearchCompanyTextFieldWidgetState();
}

class SearchCompanyTextFieldWidgetState
    extends State<SearchCompanyTextFieldWidget> {
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
          keyboardType: widget.textInputType,
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
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    fetchData(myController.text);
                  });
                },
                icon: const Icon(Icons.search)),
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
