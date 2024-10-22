import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CountryPage extends StatefulWidget {
  const CountryPage({super.key});

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  Future<List<dynamic>> fetchData() async {
    final response =
        await http.get(Uri.parse('https://restcountries.com/v3.1/all'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Erreur lors de la récupération des données');
    }
  }

  int? selectedCountryIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Liste des pays')),
      body: SafeArea(
        child: FutureBuilder<List<dynamic>>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Erreur : ${snapshot.error}'));
            } else if (snapshot.hasData) {
              List<dynamic> countries = snapshot.data!;

              return Row(
                children: [
                  // Liste des pays
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      itemCount: countries.length,
                      itemBuilder: (context, index) {
                        final country = countries[index];

                        return Card(
                          child: ListTile(
                            title: Text(country['name']['common']),
                            leading: Image.network(
                              country['flags']['png'],
                              width: 50,
                              height: 30,
                            ),
                            onTap: () {
                              setState(() {
                                selectedCountryIndex = index;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  // Détails du pays sélectionné
                  Expanded(
                    flex: 1,
                    child: selectedCountryIndex != null
                        ? _buildCountryDetails(countries[selectedCountryIndex!])
                        : const Center(child: Text('Sélectionnez un pays pour voir les détails')),
                  ),
                ],
              );
            } else {
              return const Center(child: Text('Aucune donnée disponible.'));
            }
          },
        ),
      ),
    );
  }

Widget _buildCountryDetails(Map<String, dynamic> country) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Affichage du nom du pays
        Center(
          child: Text(
            country['name']['common'],
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        // Affichage du drapeau
        Center(
          child: Image.network(
            country['flags']['png'],
            width: 100,
            height: 60,
          ),
        ),
        const SizedBox(height: 10),
        Text('Capitale: ${country['capital']?.join(', ') ?? 'N/A'}'),
        const Divider(),
        Text('Population: ${country['population']}'),
        const Divider(),
        Text('Superficie: ${country['area']} km²'),
        const Divider(),
        Text('Région: ${country['region']}'),
        const Divider(),
        Text('Langues: ${country['languages']?.values.join(', ') ?? 'N/A'}'),
        const Divider(),
        Text('Monnaie: ${country['currencies']?.values.first['name'] ?? 'N/A'}'),
      ],
    ),
  );
}


}
