import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kuis_prak_tpm/mobil/rental_car.dart';
import 'package:flutter/material.dart';

class HalamanDetail extends StatefulWidget {
  final RentalCar rental;
  const HalamanDetail({super.key, required this.rental});

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.rental.model),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Image.network(
                  widget.rental.images[index],
                  width: 500,
                ),
                itemCount: 3,
              ),
            ),
            Text(widget.rental.model),
            Text(widget.rental.description)
          ],
        ),
      ),
    );
  }
}
