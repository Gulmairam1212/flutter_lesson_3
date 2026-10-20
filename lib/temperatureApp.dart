import 'package:flutter/material.dart';

class TemperatureApp extends StatefulWidget {
  @override
  State <TemperatureApp> createState() => TemperatureAppState();
  
}

class TemperatureAppState extends State<TemperatureApp> {
  int temp = 0;
   @override
   Widget build (BuildContext context){
    return MaterialApp(
   home: Scaffold(
    appBar: AppBar(title: Text ('Счетчик температур'),
    backgroundColor: Colors.blue,
    centerTitle: true,
    ),
    body:Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
         children:[
         Text('Температура', style: TextStyle(fontSize: 34),
         ),
         SizedBox(height: 10,),

         Text('$temp градусов', style:TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: temp > 0 ? Colors.black : Colors.black
         ),
         ),
         SizedBox(height: 22),

         Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: (){
              setState((){
               temp--;
              }
              );
              },
             child: Text('Уменьшить')
              ),

              SizedBox(width: 20),

              ElevatedButton(
                onPressed: (){
                  setState((){
                    temp++;
                  } );
                },
                 child:Text ('Увеличить'),
              ),   
               
              SizedBox(width:20),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    temp = 0;
                  });
                },
                child: Text('Сброс')
                ),
                
         ],
      ),
         ],
      ),
    ),
   ),
    );
    
   }
   }