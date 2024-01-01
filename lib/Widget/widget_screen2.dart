import 'package:betazen/Model/model_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget Screen2Widget(BuildContext context, Screen2Model data) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Material(
      elevation: 1,
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Container(
                                width: 45,
                                height: 45,
                                padding: EdgeInsets.all(5),
                                color: Colors.orange,
                                child: ClipOval(
                                  child: Image.asset(
                                    data.Image,
                                    width: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            data.date,
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 19),
                          ),
                          Text(data.day),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            height: 6,
                            thickness: 2,
                            color: Colors.black,
                          ),
                          Text(data.monthAndYear),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.title,
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                          Row(
                            children: [
                              Text(
                                data.startingLocation,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              SizedBox(
                                width: 8,
                                child: Divider(
                                  height: 5,
                                  thickness: 2.5,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                data.lastLocation,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ],
                          ),
                          Text(data.brandName),
                          Text(data.subtitle),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xFFFAD4D4),
                child: Row(
                  children: [
                    SizedBox(width: 8,),
                    Text('Rate this trip',style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer(),
                    RatingBar.builder(
                      initialRating: 3, // Set the initial rating value
                      minRating: 1, // Minimum rating
                      direction: Axis
                          .horizontal, // Set the direction (horizontal or vertical)
                      allowHalfRating: true, // Allow half-star ratings
                      itemCount: 5, // Number of stars
                      itemSize: 30, // Size of each star
                      itemPadding: EdgeInsets.symmetric(
                          horizontal: 4.0), // Padding between stars
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber, // Star color
                      ),
                      onRatingUpdate: (rating) {
                        print(rating); // Handle the rating update
                      },
                    ),
                  ],
                ),
              )
            ],
          )),
    ),
  );
}
