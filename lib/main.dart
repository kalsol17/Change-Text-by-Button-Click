import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    home:HomePage()
    )
  );

}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter=0;
  String selectedDepartment=' no Department';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Changing text by clicking a button while increasing the amount',
            style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),),
            Text('You pressed $counter times'),
            ElevatedButton(onPressed: (){
              setState(() {
                counter ++;
                selectedDepartment=selectedDepartment;
              });
            }, 
             child: Text('press me')),
              SizedBox(height: 10,),

              Text('Now  $selectedDepartment is Clicked'),
             ElevatedButton(onPressed: (){
              setState(() {
                counter ++;
                selectedDepartment='Computer Science';
              });
             },
              child: Text('Computer Science')),
              SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                counter ++;
                selectedDepartment='Software Engineering';
              });
            },
              child: Text('Software Engineering')),
              SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                counter ++;
                selectedDepartment='Information Technology';
              });
            },
              child: Text('Information Technology')),
          ],
        ),
      ),
    );
  }
}