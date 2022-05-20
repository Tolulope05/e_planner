import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

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
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                )
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
