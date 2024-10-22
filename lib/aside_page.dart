import 'package:flutter/material.dart';


class AsidePage extends StatelessWidget {
  const AsidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 202, 200, 194),
            ),
            child: Text(
              'ESHOP',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ExpansionTile(
            title: const Text(
              "OVERVIEW",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            children: [
              ListTile(
                leading: const Icon(Icons.tv_sharp),
                title: const Text(
                  "In service",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
               onTap:(){
                   Navigator.pushNamed(context, '/menu');
                },
              ),
            ],
          ),
          const ExpansionTile(
            title: Text(
              "Device",
              style: TextStyle(color: Colors.grey),
            ),
            children: [
              ListTile(
                leading: Icon(Icons.build),
                title: Text(
                  "In service",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_off_outlined),
                title: Text(
                  "Reserved",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text(
                  "Device 3",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text(
              "Clients",
              style: TextStyle(color: Colors.grey),
            ),
            children: [
              ListTile(
                leading: const Icon(Icons.calendar_today),
                title: const Text(
                  "Client list",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                 onTap:(){
                   Navigator.pushNamed(context, '/data');
                },
              ),
              const ListTile(
                leading: Icon(Icons.check_box),
                title: Text(
                  "In order",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
               
              ),
              const ListTile(
                leading: Icon(Icons.call),
                title: Text(
                  "Call",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text(
              "Other",
              style: TextStyle(color: Colors.grey),
            ),
            children: [
              ListTile(
                leading: Icon(Icons.note),
                title: Text(
                  "Notes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text(
                  "Reminders 4",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text(
                  "Calendar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title:const Text(
              "Liste des pays",
              style: TextStyle(color: Colors.grey),
            ),
            children: [
              ListTile(
                leading:const Icon(Icons.location_city),
                title:const Text(
                  "Voir la liste",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                  onTap:(){
                   Navigator.pushNamed(context, '/country');
                },
              ),
             
             
            ],
          ),
        ],
      ),
    );
  }
}
