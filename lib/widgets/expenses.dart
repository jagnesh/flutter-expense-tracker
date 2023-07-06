import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_list/expense_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      amount: 19.99,
      date: DateTime.now(),
      title: "Flutter Course",
      category: Category.work,
    ),
    Expense(
      amount: 16.99,
      date: DateTime.now(),
      title: "Flight Tickets",
      category: Category.travel,
    ),
  ];

  void _openExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Expense Tracker",
        ),
        actions: [
          IconButton(
            onPressed: _openExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ExpenseList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
