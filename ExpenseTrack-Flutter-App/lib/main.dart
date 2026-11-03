import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: ExpenseTrackApp()));
}

class ExpenseTrackApp extends StatelessWidget {
  const ExpenseTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpenseTrack',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpenseTrack Dashboard'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.teal.shade200),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Balance', style: TextStyle(fontSize: 16, color: Colors.grey)),
                  SizedBox(height: 8),
                  Text('\$4,850.00', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.teal)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Recent Transactions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.red100, child: Icon(Icons.shopping_cart, color: Colors.red)),
                    title: Text('Grocery Shopping'),
                    subtitle: Text('Food & Dining • Today'),
                    trailing: Text('-\$120.50', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.green100, child: Icon(Icons.arrow_downward, color: Colors.green)),
                    title: Text('Client Salary Deposit'),
                    subtitle: Text('Income • Yesterday'),
                    trailing: Text('+\$2,500.00', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
