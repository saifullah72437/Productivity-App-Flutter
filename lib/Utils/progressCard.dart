import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  String t1,t2,t3,per;
  double percentageValue;
   final bool current;
   ProgressCard({Key? key, required this.t1, required this.t2, required this.t3, required this.per, required this.current, required this.percentageValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          color: current ? Color(0XFFf56c61) : Color(0XFFffd465),
          borderRadius: BorderRadius.circular(10),
          boxShadow:  [
            BoxShadow(
              color: current ? Color(0XFFf56c61) : Colors.transparent,
              offset: Offset(5, 5),
              blurRadius: 5,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,

              child: CircularProgressIndicator(
                value: percentageValue,
                backgroundColor: Colors.transparent,
                valueColor:  AlwaysStoppedAnimation<Color>(current ? Color(0XFFfbc3bd) : Color(0XFFa98128)) ,
              ),
            ),
             Positioned(
              top: 30,
              left: 30,
              child: Text(per, style: TextStyle(color: current ?  Colors.white : Color(0XFFa98128)),),
            ),
            Positioned(
              top: 80,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(t1, style: TextStyle(color: current ?  Colors.white : Color(0XFFa98128), fontSize: 16, fontWeight: FontWeight.w500),),
                  Text(t2,style: TextStyle(color: current ?  Colors.white : Color(0XFFa98128), fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text(t3, style: TextStyle(color: current ?  Colors.white : Color(0XFFa98128), fontSize:10, fontWeight: FontWeight.w100),),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
