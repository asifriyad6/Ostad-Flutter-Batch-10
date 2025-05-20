import 'package:flutter/material.dart';

class NameNumberListApp extends StatefulWidget {
  const NameNumberListApp({super.key});

  @override
  _NameNumberListAppState createState() => _NameNumberListAppState();
}

class _NameNumberListAppState extends State<NameNumberListApp> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  List<Map<String, String>> entries = [];

  void addEntry() {
    String name = nameController.text.trim();
    String number = numberController.text.trim();

    if (name.isNotEmpty && number.isNotEmpty) {
      setState(() {
        entries.add({'name': name, 'number': number});
        nameController.clear();
        numberController.clear();
      });
    }
  }

  void confirmDelete(int index) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('Confirm Delete'),
            content: Text('Do you want to delete this contact?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), // Cancel
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    entries.removeAt(index);
                  });
                  Navigator.pop(context); // Close dialog
                },
                child: Text('Delete'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: numberController,
              decoration: InputDecoration(
                labelText: 'Enter Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: addEntry,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: entries.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onLongPress: () => confirmDelete(index),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[200], // Background color
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.person),
                        trailing: Icon(Icons.phone),
                        title: Text(entries[index]['name']!),
                        subtitle: Text(entries[index]['number']!),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
