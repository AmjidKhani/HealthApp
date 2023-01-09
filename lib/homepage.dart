import 'package:flutter/material.dart';
import 'package:healthapp/widgets/doctorintro.dart';
import 'package:healthapp/widgets/healthneeds.dart';
import 'package:healthapp/widgets/nearbydoctor.dart';
import 'package:ionicons/ionicons.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, Ali"),
              Text(
                "How Are You Feeling Today?",
                style: Theme.of(context).textTheme.caption,
              ),
            ]),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Ionicons.notifications)),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Icon(Ionicons.search_outline),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
         children: [
          
          const SizedBox(
            height: 150,
            child: doctorintro()),
          const SizedBox(

            height: 20,
          ),
          Text('Health Needs',
          style:
 Theme.of(context).textTheme.headline6,

          ),
     const SizedBox(
            height: 20,
          ),
          const HealthNeed(),
           const SizedBox(
            height: 20,
          ),
           Text('Nearby Doctor',
          style:
 Theme.of(context).textTheme.headline6,

          ),
           const SizedBox(
            height: 20,
          ),
          Expanded(child: NearByDoctor()),
SizedBox(height: 20,),
        ]),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items:const [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.calendar), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.chatbubble_ellipses_outline),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Ionicons.person), label: "Home")
          ]),
    );
  }
}
