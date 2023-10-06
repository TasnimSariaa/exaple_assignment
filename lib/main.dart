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
  Color defaultColor = Colors.grey; // Default color is gray

  void changeButtonColor(String size) {
    setState(() {
      selectedSize = size;
    });
    showSizeSnackbar(context, size);
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    changeButtonColor('Small');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: selectedSize == 'Small' ? defaultColor : null,
                  ),
                  child: Text('S'),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeButtonColor('Medium');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: selectedSize == 'Medium' ? defaultColor : null,
                  ),
                  child: Text('M'),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeButtonColor('Large');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: selectedSize == 'Large' ? defaultColor : null,
                  ),
                  child: Text('L'),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeButtonColor('XL');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: selectedSize == 'XL' ? defaultColor : null,
                  ),
                  child: Text('XL'),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeButtonColor('XXL');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: selectedSize == 'XXL' ? defaultColor : null,
                  ),
                  child: Text('XXL'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                changeButtonColor('XXXL');
              },
              style: ElevatedButton.styleFrom(
                primary: selectedSize == 'XXXL' ? defaultColor : null,
              ),
              child: Text('XXXL'),
            ),
          ],
        ),
      ),
    );
  }
}
