import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) => ExpenseItem(expenses[index]),
        itemCount: expenses.length,
      ),
    );
  }
}
