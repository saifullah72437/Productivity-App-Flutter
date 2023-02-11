import 'package:flutter/material.dart';

import '../Utils/progressCard.dart';

class HomeScreen extends StatelessWidget {

 const HomeScreen({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFfcfbfe),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Hello, Villie!',
                  style: TextStyle(
                      color: Color(0XFF2f2c4d),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Your progress',
                  style: TextStyle(
                      color: Color(0XFF2f2c4d),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:  [
                ProgressCard(t1: "Working", t2: "Hours", t3: "Working hours\nexceedeed 3 hours", current: true, per: "9%", percentageValue: 0.9,),
                SizedBox(width: 20,),
                ProgressCard(t1: "Your", t2: "Efficiency", t3: "Excellent Result", current: false, per: "8%", percentageValue: 0.8,),
                SizedBox(width: 20,),
                ProgressCard(t1: "Your", t2: "Skills", t3: "Awesome", current: false, per: "4%", percentageValue: 0.4,),
                SizedBox(width: 20,),
                ProgressCard(t1: "Your", t2: "Efficiency", t3: "Excellent Result", current: false, per: "5%", percentageValue: 0.5,),
                SizedBox(width: 20,),
                ProgressCard(t1: "Your", t2: "Efficiency", t3: "Excellent Result", current: false, per: "9%", percentageValue: 0.9,),
                SizedBox(width: 20,),
                ProgressCard(t1: "Your", t2: "Efficiency", t3: "Excellent Result", current: false, per: "2%", percentageValue: 0.2,),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
