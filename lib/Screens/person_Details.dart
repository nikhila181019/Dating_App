import 'package:flutter/material.dart';

class PersonDetails extends StatelessWidget {
  const PersonDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Person Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),)),
      backgroundColor: Colors.transparent,

      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/fifth.jpg"),
                  fit: BoxFit.cover,

                ),
                borderRadius: BorderRadius.circular(70),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Nikhil Agarwal",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30),),
          ),
          Text("Chandigarh University",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(1000)
                  ),
                  child: Center(child: Text("X",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(1000),



                  ),
                  child: Center(child: Text("❤",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(1000)
                  ),
                  child: Center(child: Text("X",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),)),
                ),
              ),
            ],
          )
        ],

      ),
    );
}

}

