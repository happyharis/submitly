import 'package:flutter/material.dart';
import 'package:submitly/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('I was a'),
            SizedBox(width: 10),
            SelectRoleButton(),
            SizedBox(width: 10),
            Text('for the'),
          ],
        ),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class SelectRoleButton extends StatefulWidget {
  const SelectRoleButton({Key? key}) : super(key: key);

  @override
  State<SelectRoleButton> createState() => _SelectRoleButtonState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _SelectRoleButtonState extends State<SelectRoleButton> {
  String dropdownValue = 'Class Instructor level 1 (new, assistant)';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      elevation: 2,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
