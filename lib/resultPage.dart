import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
const ResultPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 13, 67, 115),
    appBar: AppBar(
    backgroundColor:  Color.fromARGB(255, 13, 67, 115),
    leading: Icon(Icons.menu),
    title: Text('BMI CALCULATOR'),
    centerTitle: true,
    
    ),
    body:
    
    Column(
      children: [
        Padding(
        padding: const EdgeInsets.all(15.0),
        child:   SingleChildScrollView(
          child: Column(
          children: [
                Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
                
                ),
            SizedBox(height: 30,),
            Container(
              width: 400,
              height: 500,
              color: Colors.black26,
              
              child: Column(children: [
          Padding(
          padding: const EdgeInsets.symmetric(vertical:30),
          child:   Text(
          'NORMAL',
          style: TextStyle(
            color: Colors.green,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            ),
          
          ),
          ),
          
          SizedBox(height: 3,),
          
          Text('22.1', 
          style: TextStyle(
          color: Colors.white,
            fontSize: 110,
            fontWeight: FontWeight.bold,
            ),
            ),
          
          SizedBox(height: 15,),
          
          Text('Normal BMI range:',
          style: TextStyle(
          color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.w300,
            ),
          
          ),
          Text('18,5- 25 kg/m2',
          style: TextStyle(
          color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w500,
            ),
          ),
          
          SizedBox(height: 20,),
          
          
          Text('You have a normal body',
          style: TextStyle(
          color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w500,
            ),
          ),
          Text('weight. Good job!',
          style: TextStyle(
          color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w500,
            ),
          ),
          
          SizedBox(height: 40,),
          
          Padding(
          padding: const EdgeInsets.all(15.0),
          child:   ElevatedButton(
          
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black12),
          
          onPressed: (){},
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Text(
              'Save Result',
              style: TextStyle(
                letterSpacing: 2,
                wordSpacing: 1,
                fontSize: 20,
              ),),
           ),
            ),
          ),
          
              ]),
            ),
            
          
             
           
          
            
              ],
            ),
          

          
          
          
          ],
          
          ),
        ),
        
        
        ),


       SizedBox(height: 23,),
  SizedBox(
    height: 63,
    width: double.infinity,
    child:   ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
      onPressed: (){
        print('tapped');
        Navigator.pop(context);
        
      } ,
    
    child: Text('RE-CALCULATE YOUR BMI',
    style:
    TextStyle(
      color: Colors.white,
    fontSize: 24,
    wordSpacing: 2,
    letterSpacing: 2,
  
    
    )
    ,)),
  ),
      
      ],
    ),
    
    
     
    );
  }
}