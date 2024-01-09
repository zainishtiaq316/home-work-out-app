import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StayActive extends StatelessWidget {
  const StayActive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/stayActive.jpg",
            fit: BoxFit.cover,
          ),
          Positioned(
              child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Text(
                    "Stay active, stay in Shape",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "5 workouts",
                style: TextStyle(color: Colors.white, fontSize: 13),
              )
            ],
          ))
        ],
      ),
    );
  }
}
