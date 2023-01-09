import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class doctorintro extends StatelessWidget {
  const doctorintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/doctor_2.jpg',
      
                width: 50,
                // height: 80,
              ),
            ),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Dr. Ahmed Khan",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const Text(
                  "Dental Specialist",
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(height: 30,),
                Row(
                 
                  children: [
      
                    Container(
                      height: 40,
                      
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10),
                child: Row(children: const[
        SizedBox(width: 10,),
                  Icon(Ionicons.calendar,color: Colors.white,),
                   SizedBox(width: 5,),
                  Text('Today', style: TextStyle(color: Colors.white),),
                  SizedBox(width: 5,),
                  Icon(Ionicons.time_outline,color: Colors.white,),
                   SizedBox(width: 5,),
                 
                  Text('Today', style: TextStyle(color: Colors.white),),
                    SizedBox(width: 5,),
                  Text('14:30 - 15:30 AM', style: TextStyle(color: Colors.white),),
                    SizedBox(width: 5,),
                ]),
                    )
                  ],
                )
            
              ],
            )
          ],
        ),
      ),
    ));
  }
}
