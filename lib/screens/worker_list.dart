import 'package:flutter/material.dart';
import 'worker_profile.dart';

class WorkerList extends StatelessWidget {
  final String category;

  const WorkerList({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("$category Workers"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          workerCard(context, "Ramesh", "5 years experience", "Bangalore"),
          workerCard(context, "Suresh", "2 years experience", "Mysore"),
          workerCard(context, "Mahesh", "8 years experience", "Udupi"),
          workerCard(context, "Kiran", "3 years experience", "Mangalore"),
        ],
      ),
    );
  }

  Widget workerCard(BuildContext context, String name, String exp, String location) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 25,
          backgroundColor: Colors.red,
          child: Icon(Icons.person, color: Colors.white),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("$exp\n$location"),
        isThreeLine: true,
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => WorkerProfile(
                name: name,
                exp: exp,
                location: location,
              ),
            ),
          );
        },
      ),
    );
  }
}
