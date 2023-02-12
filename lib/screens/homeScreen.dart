import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:productivity_app/Utils/todoCard.dart';

import '../Utils/progressCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const  Color(0XFFfcfbfe),
        body: SingleChildScrollView(
          child: Padding(
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
                          fontSize: 20,
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
                    children: [
                      ProgressCard(
                        t1: "Working",
                        t2: "Hours",
                        t3: "Working hours\nexceedeed 3 hours",
                        current: true,
                        per: "9%",
                        percentageValue: 0.9,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ProgressCard(
                        t1: "Your",
                        t2: "Efficiency",
                        t3: "Excellent Result",
                        current: false,
                        per: "8%",
                        percentageValue: 0.8,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ProgressCard(
                        t1: "Your",
                        t2: "Skills",
                        t3: "Awesome",
                        current: false,
                        per: "4%",
                        percentageValue: 0.4,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ProgressCard(
                        t1: "Your",
                        t2: "Efficiency",
                        t3: "Excellent Result",
                        current: false,
                        per: "5%",
                        percentageValue: 0.5,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ProgressCard(
                        t1: "Your",
                        t2: "Efficiency",
                        t3: "Excellent Result",
                        current: false,
                        per: "9%",
                        percentageValue: 0.9,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ProgressCard(
                        t1: "Your",
                        t2: "Efficiency",
                        t3: "Excellent Result",
                        current: false,
                        per: "2%",
                        percentageValue: 0.2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Sunday, Feb 11',
                      style: TextStyle(
                          color: Color(0XFF2f2c4d),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      padding:const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xFFe1e0e7),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(child: FaIcon(FontAwesomeIcons.calendarDay, color: Color(0XFF504e68),)),
                    )
                  ],
                ),
                const SizedBox(height: 20,),

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      TodoCard(mainTime: "10:00 AM", h1: "Metting with front-end dev", h2: "Flose Real Estate Project", time2: "09:50 AM - 10:50 AM", current: true,),
                      SizedBox(height: 10,),
                      TodoCard(mainTime: "11:00 AM", h1: "Internal Marketing session", h2: "Marketing Department", time2: "11:00 AM - 12:00 AM", current: false,),
                      SizedBox(height: 10,),
                      TodoCard(mainTime: "12:00 AM", h1: "Web development session", h2: "Tech Department", time2: "12:00 AM - 01:00 PM", current: true,),
                      SizedBox(height: 10,),
                      TodoCard(mainTime: "01:00 AM", h1: "Doing Programming", h2: "Marketing Department", time2: "01:00 PM - 03:00 PM", current: false,),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
