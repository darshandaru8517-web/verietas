import 'package:flutter/material.dart';

class WorkerProfile extends StatelessWidget {
  final String name;
  final String exp;
  final String location;

  const WorkerProfile({
    super.key,
    required this.name,
    required this.exp,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("$name"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                child: Icon(Icons.person, size: 60, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Text("Name: $name",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("Experience: $exp", style: TextStyle(fontSize: 18)),
            Text("Location: $location", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),

            const Text("Skills:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            const Text("- Professional worker", style: TextStyle(fontSize: 16)),
            const Text("- Verified experience", style: TextStyle(fontSize: 16)),
            const Text("- Customer friendly", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 40),

            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  "Hire Now",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
