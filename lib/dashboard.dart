import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'CoExpense Tracker',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle Home button tap
              },
            ),
            ListTile(
              title: Text('Members'),
              onTap: () {
                // Handle Members button tap
              },
            ),
            ListTile(
              title: Text('Add Expense'),
              onTap: () {
                // Handle Add Expense button tap
              },
            ),
            ListTile(
              title: Text('Modify Expense'),
              onTap: () {
                // Handle Modify Expense button tap
              },
            ),
            ListTile(
              title: Text('Calculate'),
              onTap: () {
                // Handle Calculate button tap
              },
            ),
            ListTile(
              title: Text('Reports and Analytics'),
              onTap: () {
                // Handle Reports and Analytics button tap
              },
            ),
            ListTile(
              title: Text('Past Trips'),
              onTap: () {
                // Handle Reports and Analytics button tap
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome to CoExpense'),
      ),
    );
  }
}
