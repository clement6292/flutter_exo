import 'package:flutter/material.dart';

class DatatablePage extends StatelessWidget {
  const DatatablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('CLIENTS'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          border: TableBorder.all(),
          children:const [
            TableRow(children: [
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Contact', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Description', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Date', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Statue', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ]),
            TableRow(children:[
              Padding(
                padding:EdgeInsets.all(8.0),
                
                child: Text('Name'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('+229 00 11 22 23'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Description'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('20/09/20024'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 1, Col 2'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 1, Col 2'),
              ),
            ]),
            TableRow(children:[
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Name'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('+229 00 11 22 23'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Description'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('20/09/20024'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 2, Col 2'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 2, Col 2'),
              ),
            ]),
            TableRow(children:[
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Name'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('+229 00 11 22 23'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Description'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('20/09/20024'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 2, Col 2'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 2, Col 2'),
              ),
            ]),
            TableRow(children:[
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Name'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('+229 00 11 22 23'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Description'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('20/09/20024'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 2, Col 2'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 2, Col 2'),
              ),
            ]),
            TableRow(children:[
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Name'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('+229 00 11 22 23'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Description'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('20/09/20024'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 2, Col 2'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 2, Col 2'),
              ),
            ]),
            TableRow(children:[
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Name'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('+229 00 11 22 23'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Description'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('20/09/20024'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 2, Col 2'),
              ),
              Padding(
                padding:EdgeInsets.all(8.0),
                child: Text('Row 2, Col 2'),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

