import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  String mainTime, h1, h2, time2;
  final bool current;
   TodoCard({Key? key, required this.mainTime, required this.h1, required this.h2, required this.time2, required this.current}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          mainTime,
          style: TextStyle(
              color: Color(0XFF2f2c4d),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: current ? Color(0XFFfee2e7) : Color(0XFFe7e5f1),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  h1,
                  style: TextStyle(
                      color: current ? Color(0XFF723946) : Color(0XFF43416c),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                 Text(
                  h2,
                  style: TextStyle(
                      color: current ? Color(0XFF723946) : Color(0XFF43416c), fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            child: Container(
                              padding: EdgeInsets.all(2),
                              height: 40,
                              width: 40,
                              decoration:  BoxDecoration(
                                shape: BoxShape.circle,
                                color: current ? Colors.white : Color(0XFFc8c5db),
                              ),
                              child: current ? CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                              ) : Center(child: Text("+ 20", style: TextStyle(color: Color(0XFF2f2c4d), fontWeight: FontWeight.bold),),),
                            ),
                          ),
                        ],
                      ),
                    ),
                     Text(
                      time2,
                      style: TextStyle(
                        color: current ? Color(0XFF723946) : Color(0XFF43416c),
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
