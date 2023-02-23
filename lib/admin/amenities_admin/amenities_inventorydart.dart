import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';

class AmenitiesInventory extends StatefulWidget {
  const AmenitiesInventory({super.key});

  @override
  State<AmenitiesInventory> createState() => _AmenitiesInventoryState();
}

class _AmenitiesInventoryState extends State<AmenitiesInventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Barbera/LTI-90',
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Column(
              children: [
                //Unpaid
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    // AssignTitle(
                    //   id: 'Moses Dabo',
                    //   date: '23/08/2022 -> 30/08/2022',
                    //   btntext: 'Started',
                    // ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Reservation',
                            data: 'R2902',
                          ),
                          TableC(
                            heading: 'Passengers',
                            data: '06',
                          ),
                          TableW(
                            heading: 'Aircraft',
                            data: 'A319',
                          ),
                          TableC(
                            heading: 'City',
                            data: 'Abidjan',
                          ),
                          TableW(
                            heading: 'Cost',
                            data: '25,000.00',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ])),
    );
  }
}
