import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController t1 = new TextEditingController(text: "0");
  TextEditingController t2 = new TextEditingController(text: "0");

  var num1=0,num2=0,sum=0;
  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  } 

  void doSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  } 

  void doMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  } 

  void doDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1~/num2;
    });
  } 
  
  void doClear(){
    setState(() {
      t1.text="0";
      t2.text="0";
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(50.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("Output : $sum",
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 1"),
                controller: t1,
            ),
           
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 2"
              ),
              controller: t2,
            ),

             Padding(padding: const EdgeInsets.only(top: 20.0) ),
            
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new MaterialButton(
                 color: Colors.greenAccent,
                  child: new Text("+"),
                  onPressed: doAddition,
                  ),

                  Padding(padding: EdgeInsets.only(left: 20.0)),

                  new MaterialButton(
                  color: Colors.greenAccent,
                  child: new Text("-"),
                  onPressed: doSub,
                  ),
              ],
            ),
            
            Padding(padding: EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                  new MaterialButton(
                  color: Colors.greenAccent,
                  child: new Text("/"),
                  onPressed: doDiv,
                  ),

                  Padding(padding: EdgeInsets.only(left: 20.0)),

                  new MaterialButton(
                  color: Colors.greenAccent,
                  child: new Text("*"),
                  onPressed: doMul,
                  ),
              ],
            ),

            Padding(padding: EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  new MaterialButton(
                  color: Colors.greenAccent,
                  child: new Text("Clear"),
                  onPressed: doClear,
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}