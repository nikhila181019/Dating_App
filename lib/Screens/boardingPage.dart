import 'package:flutter/material.dart';
import 'package:internshala_task/Data/on_boarding.dart';
class HomePage extends StatefulWidget {

  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <onBoardingEntity> _onBoardingData=onBoardingEntity.onBoardingData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(itemCount:_onBoardingData.length,itemBuilder: (context,index){
          return OnBoaringItem(title: _onBoardingData[index].title, description: _onBoardingData[index].description, image: _onBoardingData[index].image, index: index);
        })
    );
  }
}

class OnBoaringItem extends StatelessWidget {

  final String title;
  final String description;
  final String image;
  final int index;

  const OnBoaringItem(
      {
        Key? key,
        required this.title,
        required this.description,
        required this.image,
        required this.index,})
      : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset("assets/$image",fit: BoxFit.contain,),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "\t\t\t\t\t\t\t\t$title",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Center(
          child: Text("$description",style: TextStyle(fontSize: 20,color: Colors.grey),),
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index==0? Colors.black: Colors.grey
              ),
            ),
            SizedBox(height: 15,
              width: 10,),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index==1? Colors.black: Colors.grey
              ),
            ),
            SizedBox(height: 15,
                width: 10),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index==2? Colors.black: Colors.grey
              ),
            ),
          ],
        ),
        SizedBox(height: 40,),
        index == 2 ? GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, "LoginPageWith");
          },
          child: Container(
            height: 70,
            width: 70,
            child:
            Center(child:
            Text
              (">",style:
            TextStyle(
                fontSize: 40,fontWeight: FontWeight.w900,color: Colors.white
            ),

            ),


            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(50),
            ),

          ),
        )
            : SizedBox(height: 70, width: 70),
      ],
    );
  }

}