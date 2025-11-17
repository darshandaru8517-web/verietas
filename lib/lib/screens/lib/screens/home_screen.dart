import 'package:flutter/material.dart';
import 'worker_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Varietas"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("What service do you need?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                hintText: "Search workers (e.g., plumber, maid, carpenter)",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Text("Popular Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  categoryItem(context, "Maid", Icons.cleaning_services),
                  categoryItem(context, "Plumber", Icons.plumbing),
                  categoryItem(context, "Electrician", Icons.electrical_services),
                  categoryItem(context, "Carpenter", Icons.chair_alt),
                  categoryItem(context, "Cook", Icons.restaurant),
                  categoryItem(context, "Bone Setter", Icons.medical_services),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget categoryItem(BuildContext context, String label, IconData icon) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => WorkerList(category: label),
        ),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.red),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 45, color: Colors.red),
          const SizedBox(height: 10),
          Text(label,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
        ],
      ),
    ),
  );
}
