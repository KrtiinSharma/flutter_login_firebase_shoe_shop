import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChartPage extends StatefulWidget {
  const PieChartPage({super.key});

  @override
  _PieChartPageState createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
  final List<Map<String, dynamic>> _data = [];

  void _addItem() {
    String itemName = '';
    double itemPercentage = 0.0;

    // Show dialog to input item name and percentage
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(hintText: 'Item Name'),
                onChanged: (value) {
                  itemName = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(hintText: 'Percentage'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  itemPercentage = double.tryParse(value) ?? 0.0;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Check total percentage before adding the new item
                double totalPercentage =
                    _data.fold(0, (sum, item) => sum + item['percentage']);
                if (itemPercentage <= 0 || itemName.isEmpty) {
                  _showErrorDialog(
                      'Please enter a valid item name and percentage.');
                } else if (totalPercentage + itemPercentage > 100) {
                  _showErrorDialog('Total percentage cannot exceed 100%.');
                } else {
                  setState(() {
                    _data.add({'name': itemName, 'percentage': itemPercentage});
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Add'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _removeItem(int index) {
    setState(() {
      if (index < _data.length) {
        _data.removeAt(index);
      }
    });
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
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
        title: const Text('Pie Chart'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _addItem,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PieChart(
                PieChartData(
                  sections: _showingSections(),
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_data[index]['name']),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _removeItem(index),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _showingSections() {
    return _data.map((item) {
      final isTouched = false;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;

      return PieChartSectionData(
        color: Colors.primaries[_data.indexOf(item) % Colors.primaries.length],
        value: item['percentage'],
        title: '${item['percentage']}%',
        radius: radius,
        titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff)),
      );
    }).toList();
  }
}
