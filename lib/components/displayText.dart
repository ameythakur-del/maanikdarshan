import 'package:flutter/material.dart';
import 'package:maanikdarshan/components/customAppBar.dart';


class DisplayText extends StatefulWidget {
  final String name;
  final String text;
  const DisplayText({Key? key, required this.name, required this.text})
      : super(key: key);

  @override
  State<DisplayText> createState() => _DisplayTextState();
}

class _DisplayTextState extends State<DisplayText> {
  double value = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ManikDarshan(title: widget.name),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Slider(
                value: value,
                activeColor: const Color(0xFF772200),
                inactiveColor: const Color(0xFFF79023),
                onChanged: (double s) {
                  setState(() {
                    value = s;
                  });
                },
                divisions: 10,
                min: 15.0,
                max: 30.0,
              ),
              Center(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: const Color.fromRGBO(101, 35, 8, 1),
                    fontSize: (value),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
