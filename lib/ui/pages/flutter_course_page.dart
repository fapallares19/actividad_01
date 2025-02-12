import 'package:flutter/material.dart';

class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // you may remove this widget if you don't want to use it
      child: Column(
        children: <Widget>[
          buildHeader(),
          buildCourseFocus(),
          buildModules(),
          buildProjectList(),
        ],
      ),
    ));
  }

  Widget buildHeader() {
    return const Text("Flutter course");
  }

  Widget buildCourseFocus() {
    return const Text("Focus on the course");
  }

  Widget buildModules() {
   
    final modules = [
      {'icon': Icons.book, 'label': 'Introduction'},
      {'icon': Icons.design_services, 'label': 'UX design'},
      {'icon': Icons.storage, 'label': 'State management'},
      {'icon': Icons.bug_report, 'label': 'Testing'},
      {'icon': Icons.network_check, 'label': 'Networking'},
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: modules.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[200],
                  child: Icon(modules[index]['icon'] as IconData, size: 30, color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(modules[index]['label'] as String),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildProjectList() {
   final projects = ['Sudoku', 'Random user', 'Note tak', 'Weather', 'Delivery app'];
    
    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: const Icon(Icons.folder, color: Colors.blue),
            title: Text(projects[index]),
            trailing: const Icon(Icons.more_vert),
          ),
        );
      },
    );
  }
}
