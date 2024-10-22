import 'package:flutter/material.dart';
import 'package:flutter_exo/aside_page.dart';
import 'package:flutter_exo/country_page.dart';
import 'package:flutter_exo/datatable_page.dart';


 /**

*fetch(url)
*http get(url.parse('https://jsonplaceholder.typicode.com/albulm/1))

 */
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(Icons.filter_3_outlined),
            const SizedBox(width: 10),
            const Text("Fiters"),
            const SizedBox(width: 10),
            Container(
              width: screenWidth * 0.7, // 50% de la largeur de l'écran
              height: 40,
              child: const TextField(
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            const Icon(Icons.alarm),
          ],
        ),
      ),
      drawer: const AsidePage(),
      body: const Column(
        children: [
    
             Text(
              'OverView',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 2,
                child: SizedBox(
                  width: 300, // Largeur de la carte
                  height: 150, // Hauteur de la carte
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.access_alarm),
                          SizedBox(width: 5),
                          Text('New cliens',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Text('+42',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 92, 234, 229),fontWeight: FontWeight.bold),),
                      Text('10% more than Yesterday',style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 92, 234, 229),fontWeight: FontWeight.bold),)
                    ],
                  )),
                ),
              ),
              Card(
                elevation: 2,
                child: SizedBox(
                  width: 300, // Largeur de la carte
                  height: 150, // Hauteur de la carte
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email),
                           SizedBox(width: 5),
                          Text('New reminders',style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text('-42',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 208, 127, 121),fontWeight: FontWeight.bold)),
                      Text('25% less than tuesday',style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 208, 127, 121),fontWeight: FontWeight.bold))
                    ],
                  )),
                ),
              ),
              Card(
                elevation: 2,
                child: SizedBox(
                  width: 300, // Largeur de la carte
                  height: 150, // Hauteur de la carte
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.telegram),
                           SizedBox(width: 5),
                          Text('In service',style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text('+16',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 92, 234, 229),fontWeight: FontWeight.bold)),
                      Text('10% more than friday',style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 92, 234, 229),fontWeight: FontWeight.bold))
                    ],
                  )),
                ),
              ),
            ],
          ),
        Expanded(flex: 2,child: DatatablePage(),),
        Expanded(flex: 2,child: CountryPage(),), 
        ],
        
      ),
      
    );
  }
}
