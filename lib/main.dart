import 'package:bmi_app/resultPage.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

bool isTappedMale =false;
bool isTappedFemale =false;
int weight= 50;
int age= 25;
double height= 183;

  Widget build(BuildContext context){
    return Scaffold(
backgroundColor: Color.fromARGB(255, 13, 67, 115),
appBar: AppBar(
  backgroundColor:  Color.fromARGB(255, 13, 67, 115),
  leading: Icon(Icons.menu),
  title: Text('BMI CALCULATOR'),
  centerTitle: true,
  
),

body: SingleChildScrollView(
  child:   Column(
    children: [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal:20,vertical: 15),
    child:   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
            Container(
          width: 150,
          height: 150,
          color: Colors.black26,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {

                       if(isTappedFemale == true )
                    {
                      isTappedMale = false;
                      isTappedFemale = false;
                    }

                   isTappedMale = !isTappedMale;
                 

                  });
                },
                child: Icon(Icons.male, 
                color: isTappedMale ? Colors.blue : Colors.white,
                size: 70,
                ),
              ),
              SizedBox(height: 10,),
            Text('Male',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
            ),
            ],
          ),
        ),
        SizedBox(width: 20,),
        
        
        
         Container(
          width: 150,
          height: 150,
          color: Colors.black26,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                     if(isTappedMale == true )
                    {
                      isTappedMale = false;
                      isTappedFemale = false;
                    }


                    isTappedFemale = !isTappedFemale;
                  });
                },
                child: Icon(Icons.female, 
                color: isTappedFemale ? Colors.pink : Colors. white,
                size: 70,
                ),
              ),
              SizedBox(height: 10,),
            Text('Female',
             style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
             ),
            ],
          ),
        ),
      ],
    ),
  ),
  
  SizedBox(height: 15,),
  
  Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 200,
    width: MediaQuery.of(context).size.width,
    color: Colors.black12,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Text('Height'.toUpperCase(),style: TextStyle(
        fontSize: 28, color: Colors.black,
        fontWeight: FontWeight.bold,
      ),),
  
  SizedBox(height: 10,),
  
  RichText(
    text: TextSpan(
      
    children: [
    

      TextSpan(
      
        text: '${height.toStringAsFixed(1)}', style: TextStyle(
        fontSize: 24, color: Colors.white,
        
      ),
      ),
  
TextSpan(
  text: '   ',
),
      TextSpan(
        text: 'cm',
         style: TextStyle(
        fontSize: 24, color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
  
      ),
  
  
  
    ],
  ),),
  
  Slider(
    value: height.toDouble(),
    min: 40,
    max: 200,
    onChanged: (double value) {
      height = value ;
      setState(() {
        
      });
    },
  activeColor: Colors.white,
  // inactiveColor: Colors.red,
  thumbColor: Colors.pink,
    
  )
  
    ]),
  
  ),
  SizedBox(height: 30,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 180,
        height: 180,
        color: Colors.black26,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
           
              Text('WEIGHT',
              style: TextStyle(
          fontSize: 15, color: Colors.white,
            ),
              ),
        
          Text(weight.toString(),
          style: TextStyle(
          fontSize: 50, color: Colors.white,
          fontWeight: FontWeight.bold
        
            ),
          ),
        
        SizedBox(height: 10,),
  
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
  
            GestureDetector(
              onTap: () {
                setState(() {
                  weight++;
                });
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                color: Colors.black26,
              
                ),
                child: Icon(Icons.add,color: Colors.white,),
              ),
            ),
  
            GestureDetector(
              onTap: () {
                setState(() {
                  weight--;
                });
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                color: Colors.black26,
              
                ),
                child: Icon(Icons.remove,color: Colors.white,),
              ),
            ),
          ],
        ),
  
        
  
  
  
            ],
          ),
        ),
      ),
     
       Container(
        width: 180,
        height: 180,
        color: Colors.black26,
   child: Padding(
     padding: const EdgeInsets.all(15.0),
     child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             
                Text('Age',
                style: TextStyle(
            fontSize: 15, color: Colors.white,
              ),
                ),
          
            Text(age.toString(),
            style: TextStyle(
            fontSize: 50, color: Colors.white,
            fontWeight: FontWeight.bold,
          
              ),
            ),
            SizedBox(height: 10,),
          
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
  
            GestureDetector(
              onTap: (){
                // print('tapped');
                setState(() {
                age++;
                  
                });
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                color: Colors.black26,
              
                ),
                child: Icon(Icons.add,color: Colors.white,),
              ),
            ),
  
            GestureDetector(
              onTap: () {
                
              setState(() {
                age--;
              });
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                color: Colors.black26,
              
                ),
                child: Icon(Icons.remove,color: Colors.white,),
              ),
            ),
          ],
        )
          
              ],
            ),
   ),
  
      )
    ],
  ),
  
  SizedBox(height: 18,),
  
  SizedBox(
    height: 70,
    width: double.infinity,
    child:   ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
      onPressed: (){
        print('tapped');
        Navigator.push(context, MaterialPageRoute(builder: ((context) => ResultPage()))
 
        );
      } ,
    
    child: Text('Calculate Your BMI',
    style:
    TextStyle(
      color: Colors.white,
    fontSize: 24,
    wordSpacing: 2,
    letterSpacing: 2,
  
    
    )
    ,)),
  ),
  
  
  
  ],),
),


    );
  }
}