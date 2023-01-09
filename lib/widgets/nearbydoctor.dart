import 'package:flutter/material.dart';
import 'package:healthapp/doctormodal/doctors_modal.dart';
import 'package:ionicons/ionicons.dart';

class NearByDoctor extends StatelessWidget {
  const NearByDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(doctos.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom:15),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                            doctos[index].Image.toString(),
                            ),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        doctos[index].name.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                       Text(
                        doctos[index].speciality.toString(),
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children:  [
                          Icon(
                            Ionicons.star,
                            color: Colors.yellow,
                          ),
                          Text(doctos[index].average.toString()),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 4),
                            child: Text(doctos[index].reviews.toString()),
                          ),
                          Text("Reviews"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
