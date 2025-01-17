import 'package:vet_bookr/models/vet_clinic.dart';
import 'package:flutter/material.dart';
import 'package:vet_bookr/screens/clinicsDetails.dart';

class ClinicsList extends StatelessWidget {
  VetClinic vetClinic;

  ClinicsList(this.vetClinic);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vet List"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: ListTile(
                title: Text("${vetClinic.name}"),
                subtitle: Text("${vetClinic.timing}"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ClinicsDetails(vetClinic)));
                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: ListTile(
                title: Text("${vetClinic.name}"),
                subtitle: Text("${vetClinic.timing}"),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: ListTile(
                title: Text("${vetClinic.name}"),
                subtitle: Text("${vetClinic.timing}"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
