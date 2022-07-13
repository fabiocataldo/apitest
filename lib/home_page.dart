import 'package:flutter/material.dart';
import 'package:web_test/widgets/client_row/company_name_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client DataBase'),
        actions: const [],
      ),
      body: Center(
        child: Column(children: [CompanyNameWidget(name: name)]),
      ),
    );
  }
}
