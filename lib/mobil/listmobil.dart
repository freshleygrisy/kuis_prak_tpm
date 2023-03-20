import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kuis_prak_tpm/mobil/rental_car.dart';
import 'package:kuis_prak_tpm/mobil/detail.dart';

class ListMobil extends StatelessWidget {
  const ListMobil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rental Mobil'),
        ),
        body: ListView.builder(
            itemCount: rentalCar.length,
            itemBuilder: (context, index) {
              final RentalCar rental = rentalCar[index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HalamanDetail(
                                rental: rental,
                              )));
                },
                leading: Image.network(
                  rental.images[0],
                  height: 350,
                  width: 80,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  rental.brand,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lucida',
                      fontStyle: FontStyle.italic),
                ),
                subtitle: Text(
                  rental.rentalPricePerDay,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10),
                ),
              );
            }));
  }
}
