import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              autocorrect: true,
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              autocorrect: true,
              controller: amountController,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
            ),
            TextButton(
              onPressed: () => {
                print(titleController.text),
                print(amountController.text),
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
