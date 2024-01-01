import 'package:flutter/material.dart';

import '../Model/model_screen1.dart';

Widget Screen1Widget (BuildContext context, Screen1Model data) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Material(
      elevation: 1,
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
          Row(
            children: [
              Text(data.startTime,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                width: 10,
                child: Divider(
                  height: 5,
                ),
              ),
              Text(data.endTime,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              Spacer(),

              Text('₹ ${data.mainAmount}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough
                ),),
            SizedBox(width: 5,),
              Icon(Icons.currency_rupee,size: 15,),
              Text(data.mainPrice,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
            ],
          ),
            SizedBox(height: 4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(data.title),
                  ],
                ),
                Spacer(),
                Text('₹ ${data.discountAmount}',style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey
                ),)
              ],
            ),
            SizedBox(height: 4,),
            Row(
              children: [
                Text(data.totalTime,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                const SizedBox(
                  width: 10,
                  child: Divider(
                    height: 5,
                  ),
                ),
                Text('${data.totalSeat} Seats',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(width: 1,),
                Text('(${data.singleSeat})Single'),
                const Spacer(),
              ],
            ),
            SizedBox(height: 4,),
            Divider(height: 5,
            thickness: 1,
            ),
            SizedBox(height: 4,),
            Row(
              children: [
                Image.asset('assets/images/bottle.png',height: 20,),
                SizedBox(width: 5,),
                Image.asset('assets/images/plug.png',height: 20,),
                SizedBox(width: 5,),
                Icon(Icons.location_on_sharp,size: 25,),
                SizedBox(width: 5,),
                Text('+ Other Amenities',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                Spacer(),
                SizedBox(
                  width:MediaQuery.of(context).size.width*0.24,
                  height:MediaQuery.of(context).size.width*0.06,
                  child: ElevatedButton(
                      onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
                        ),
                    ),
                        child: Row(
                    children: [
                      Text('View Details',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width*0.027,
                        color: Color(0xFF711AC5FF)
                      ),),
                      Icon(Icons.keyboard_arrow_down_sharp,
                      size:  MediaQuery.of(context).size.width*0.04,
                      color: Color(0xFF711AC5FF),)
                    ],
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
