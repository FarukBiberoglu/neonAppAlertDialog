import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  runApp(MaterialApp(
    home: AlertChallenge(),
  ));
}

class AlertChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pinocchio's Alert Adventure")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Simple Alert"),
                    content: Text("This is a basic alert with no buttons."),
                  ),
                );
              },
              child: Text("Show Simple Alert"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Alert with One Button"),
                    content: Text("Click the button below!"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          print("One Button Clicked");
                          Navigator.pop(context);
                        },
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Show Alert with One Button"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Alert with Two Buttons"),
                    content: Text("Choose an option!"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          print("Yes Clicked");
                          Navigator.pop(context);
                        },
                        child: Text("Yes"),
                      ),
                      TextButton(
                        onPressed: () {
                          print("No Clicked");
                          Navigator.pop(context);
                        },
                        child: Text("No"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Show Alert with Two Buttons"),
            ),
            ElevatedButton(
              onPressed: () {
                final textController = TextEditingController();
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Alert with Text Field"),
                    content: TextField(
                      controller: textController,
                      decoration: InputDecoration(hintText: "Enter some text"),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          print("Entered Text: ${textController.text}");
                          Navigator.pop(context);
                        },
                        child: Text("Submit"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Show Alert with Text Field"),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("Option 1"),
                        onTap: () {
                          print("Option 1 Selected");
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: Text("Option 2"),
                        onTap: () {
                          print("Option 2 Selected");
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
              child: Text("Show Action Sheet"),
            ),
            ElevatedButton(
              onPressed: () {
                Share.share("Check out this awesome Flutter app!");
              },
              child: Text("Show Activity Controller"),
            ),
          ],
        ),
      ),
    );
  }
}
