import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonColorChangeScreen(),
    );
  }
}

class ButtonColorChangeScreen extends StatefulWidget {
  @override
  _ButtonColorChangeScreenState createState() =>
      _ButtonColorChangeScreenState();
}

class _ButtonColorChangeScreenState extends State<ButtonColorChangeScreen> {
  String selectedSize = '';
  Color selectedColor = Colors.black38; // Default color

  void changeButtonColor(String size, Color color) {
    setState(() {
      selectedSize = size;
      selectedColor = color;
    });
  }

  void showSizeSnackbar(BuildContext context, String size) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size: $size'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                changeButtonColor('Small', Colors.amber);
                showSizeSnackbar(context, 'Small');
              },
              style: ElevatedButton.styleFrom(
                primary: selectedSize == 'Small' ? selectedColor : null,
              ),
              child: Text('s'),
            ),
            ElevatedButton(
              onPressed: () {
                changeButtonColor('Medium', Colors.amber);
                showSizeSnackbar(context, 'Medium');
              },
              style: ElevatedButton.styleFrom(
                primary: selectedSize == 'Medium' ? selectedColor : null,
              ),
              child: Text('M'),
            ),
            ElevatedButton(
              onPressed: () {
                changeButtonColor('Large', Colors.amber);
                showSizeSnackbar(context, 'Large');
              },
              style: ElevatedButton.styleFrom(
                primary: selectedSize == 'Large' ? selectedColor : null,
              ),
              child: Text('L'),
            ),
          ],
        ),
      ),
    );
  }
}