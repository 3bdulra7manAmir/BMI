import 'package:flutter/material.dart';

class Home extends StatefulWidget
{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{


Color? colorMale = Colors.grey[400];
Color? colorFemale = Colors.grey[400];

//ANOTHER METHOD
//Color? color = Colors.grey[400];
//bool isMale = true;

  @override
  Widget build(BuildContext context)
  {
    return SafeArea
    (

      //Scaffold
      child: Scaffold
      (

        // APP BAR
        appBar: AppBar
        (
          title: const Text("BMI Calculator"),
        ),

        //BODY IN HERE
        body: Column
        (
          children:
          [




            //RED Container //PART1
            Expanded(
              child:
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row
              (
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          colorMale = Colors.blue;
                          colorFemale = Colors.grey[400];
                          //isMale = true;
                        });
                      },
                      child: Container
                      (
                        decoration: BoxDecoration
                        (borderRadius: BorderRadius.circular(10.0),
                        color: colorMale,
                        ),
                        //color: isMale ? Colors.blue : Colors.grey[400],
                        child: const Column
                        (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(image: AssetImage('assets/imgs/man.png'), width: 80, height: 80,),
                            SizedBox(height: 15,),
                            Text("Male", style: TextStyle(fontSize:  20, fontWeight: FontWeight.bold,),)
                          ]
                        ),
                      ),
                    ),
                  ),

                  //SEPRATOR
                  const SizedBox(width: 20,),

                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          colorFemale = Colors.blue;
                          colorMale = Colors.grey[400];
                          //isMale = false;
                        });
                      },
                      child: Container
                      (
                        decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.circular(10.0),
                          //color: !isMale ? Colors.grey[400] : Colors.blue,
                          color: colorFemale,
                        ),
                        child: const Column
                        (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                            Image(image: AssetImage('assets/imgs/woman.png'), width: 80, height: 80,),
                            SizedBox(height: 15,),
                            Text("FeMale", style: TextStyle(fontSize:  20, fontWeight: FontWeight.bold,),)
                          ]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
                    ),

            //GREEN Container  //PART2
            Expanded(
              child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container
              (
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(155, 255, 255, 140),
                ),
                child: Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    const Text("HEIGHT", style: TextStyle(fontSize:  25, fontWeight: FontWeight.bold,),),
                    const Row
                    (
                      crossAxisAlignment: CrossAxisAlignment.baseline, textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("180", style: TextStyle(fontSize:  40, fontWeight: FontWeight.w900,),), Text("cm", style: TextStyle(fontSize:  20),)],
                    ),
                    Slider(value: 120, min: 80, max: 220, onChanged: (value){print(value.round());},),
                  ]
                ),
              ),
            )
                    ),

            //BLUE Container //PART3     
            Expanded(
              child:
              Padding
              (
                padding: const EdgeInsets.all(20.0),
                child: Row
                (
                //mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration
                          (borderRadius: BorderRadius.circular(10.0), color: Colors.grey[400],),
                      child: Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          const Text("AGE", style: TextStyle(fontSize:  25, fontWeight: FontWeight.bold,),),
                          const Text("180", style: TextStyle(fontSize:  40, fontWeight: FontWeight.w900,),),
                          Row( mainAxisAlignment: MainAxisAlignment.center,
                            children:[FloatingActionButton(onPressed: () {}, mini: true, child: const Icon(Icons.remove),),
                          FloatingActionButton(onPressed: () {}, mini: true, child: const Icon(Icons.add),)],)
                        ],
                        
                      ),
                    ),
                  ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                      decoration: BoxDecoration
                          (borderRadius: BorderRadius.circular(10.0), color: Colors.grey[400],),
                      child: Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          const Text("AGE", style: TextStyle(fontSize:  25, fontWeight: FontWeight.bold,),),
                          const Text("180", style: TextStyle(fontSize:  40, fontWeight: FontWeight.w900,),),
                          Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [FloatingActionButton(onPressed: () {}, mini: true, child: const Icon(Icons.remove),),
                          FloatingActionButton(onPressed: () {}, mini: true, child: const Icon(Icons.add),)],)
                        ],
                      ),
                    ),
                ),
                ],
                ),
              )
                    ),

            //CALC BUTTON
            Container(
              width: double.infinity,
              color: const Color.fromARGB(115, 255, 255, 140),
              child: MaterialButton(onPressed: (){}, textColor: Colors.black, child: const Text("CALCULATE"),))
          ],
        )
      ),
    );
  }
}
