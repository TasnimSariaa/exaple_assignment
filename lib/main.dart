import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  List<bool> isSelected = List.generate(5, (index) => false);

  int selectedCount = 0;

  void toggleSelection(int index) {
    setState(() {
      isSelected[index] = !isSelected[index];
      selectedCount = isSelected.where((selected) => selected).length;
    });
  }

  void showSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Selected Items"),
          content: Text("Number of selected items: $selectedCount"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selectable Screen"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item ${1+index}"),
            tileColor: isSelected[index] ? Colors.blueGrey : null,
            onTap: () {
              toggleSelection(index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          showSelectionDialog(context);
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
