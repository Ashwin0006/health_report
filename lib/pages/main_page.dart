import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'report_visualization_page.dart'; // Import the visualization page

class MainPage extends StatefulWidget {
  final String userEmail;

  const MainPage({super.key, required this.userEmail});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> _reportsFuture;

  @override
  void initState() {
    super.initState();
    _reportsFuture = _fetchReports();
  }

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
      _fetchReports() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('report_data')
        .where('email', isEqualTo: widget.userEmail)
        .get();

    return querySnapshot.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports'),
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder<List<QueryDocumentSnapshot<Map<String, dynamic>>>>(
        future: _reportsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No reports available.'));
          } else {
            final reports = snapshot.data!;
            return ListView.builder(
              itemCount: reports.length,
              itemBuilder: (context, index) {
                final report = reports[index];
                final timestamp = report['timestamp'] is int
                    ? DateTime.fromMillisecondsSinceEpoch(report['timestamp'])
                    : (report['timestamp'] as Timestamp).toDate();

                return ListTile(
                  title: Text('Report ${index + 1}'),
                  subtitle: Text('Timestamp: $timestamp'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReportVisualizationPage(
                          heartRateValues:
                              List<double>.from(report['readings']),
                          timestamp: timestamp,
                        ),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
