import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key? key,
    required this.transaction,
    required this.deleteTx,
  }) : super(key: key);

  final Transaction transaction;
  final Function deleteTx;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: FittedBox(
              child: Text(
                '\$${transaction.amount}',
              ),
            ),
          ),
        ),
        title: Text(
          transaction.title,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(transaction.date),
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: MediaQuery.of(context).size.width > 460
            ? TextButton.icon(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () => deleteTx(transaction.id),
                label: const Text(
                  'Delete',
                  style: TextStyle(color: Colors.red),
                ),
              )
            : IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                color: Theme.of(context).errorColor,
                onPressed: () => deleteTx(transaction.id),
              ),
      ),
    );
  }
}
