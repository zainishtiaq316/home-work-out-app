import 'package:flutter/material.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.11,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(
                    "https://www.24hourfitness.com/24life/fitness/2020/media_144e7cdb63c2f377920ff19a0bb9e6e9163f34b57.jpeg?width=750&format=jpeg&optimize=medium",
                  ),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            top: 15,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    "DISCOVER",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "More workouts",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(
                  width: 4,
                )
              ],
            )),
        Positioned(
            right: 20,
            bottom: 10,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width * 0.17,
                height: MediaQuery.of(context).size.height * 0.04,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "GO",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
