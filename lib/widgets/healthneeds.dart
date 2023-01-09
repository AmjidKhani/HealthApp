import 'package:flutter/material.dart';

class HealthNeed extends StatefulWidget {
  const HealthNeed({super.key});
  @override
  State<HealthNeed> createState() => _HealthNeedState();
}

class _HealthNeedState extends State<HealthNeed> {
  @override
  Widget build(BuildContext context) {
    List<customicons> custom = [
      customicons(icon: 'assets/appointment.png', name: 'Appointment'),
      customicons(icon: 'assets/hospital.png', name: 'Hospital'),
      customicons(icon: 'assets/more.png', name: 'Covid-19'),
      customicons(icon: 'assets/virus.png', name: 'More'),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(custom.length, (index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(0.4)),
                child: Image.asset(custom[index].icon.toString()),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(custom[index].name.toString()),
            ],
          );
        }),
      ],
    );
  }
}

class customicons {
  String? icon;
  String? name;
  customicons({this.icon, this.name});
}
