

import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return _Home();
  }

}


class _Home extends State<Home>{
  double first,second;
  double result;
  TextEditingController firstcontroller = TextEditingController();
  TextEditingController secondcontroller = TextEditingController();
  var displayresult='',output='';

  void extract(){
    first = double.parse(firstcontroller.text);
    second = double.parse(secondcontroller.text);
  }

  String add(){
    result = first + second;
    String returnstatement = 'The addition of $first and $second is';
    return returnstatement;
  }

  String subtract(){
    result = first - second;
    String returnstatement = 'The subtraction of $first and $second is';
    return returnstatement;
  }

  String multiply(){
    result = first * second;
    String returnstatement = 'The multiplication of $first and $second is';
    return returnstatement;
  }

  String divide(){
    result = first / second;
    String returnstatement = 'The division of $first and $second is';
    return returnstatement;
  }
   String value(){
     String returnvalue = '$result';
     return returnvalue;
   }

   void _reset(){
     firstcontroller.text= '';
     secondcontroller.text='';
     output= '';
     displayresult= '';
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
          title: Text(
            "Calculator"
          ),
          ),
             
             
             
             
              body: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: firstcontroller,
                      decoration: InputDecoration(
                        labelText: 'First number',
                        hintText: 'Enter the first number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        )
                      ),
                    ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: secondcontroller,
                      decoration: InputDecoration(
                        labelText: 'Second number',
                        hintText: 'Enter the second number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        )
                      ),
                    ),
                    ),
                    
                    
                    Row(
                      
                      children: <Widget>[


                        Container(
                          padding: EdgeInsets.all(3.0),
                          child: RaisedButton(
                            onPressed: (){
                              setState(() {
                                extract();
                                this.displayresult=add();
                                this.output=value();
                              });

                            },
                      child: Text("ADD"),
                      color: Colors. orangeAccent,
                      elevation: 10.0,
                    ),
                        ),


                        Container(
                          padding: EdgeInsets.all(3.0),
                          child: RaisedButton(
                            onPressed: (){
                              setState(() {
                                extract();
                                this.displayresult=subtract();
                                this.output=value();
                              });
                            },
                      child: Text("SUBTRACT"),
                      color: Colors. orangeAccent,
                      elevation: 10.0,
                    ),
                        ),


                        Container(
                          padding: EdgeInsets.all(3.0),
                          child: RaisedButton(
                            onPressed: (){
                              setState(() {
                                extract();
                                this.displayresult=multiply();
                                this.output=value();
                              });
                            },
                      child: Text("MULTIPLY"),
                      color: Colors. orangeAccent,
                      elevation: 10.0,
                    ),
                        ),


                        Container(
                          padding: EdgeInsets.all(3.0),
                          child: RaisedButton(
                            onPressed: (){
                              setState(() {
                                extract();
                                this.displayresult=divide();
                                this.output=value();
                              });
                            },
                      child: Text("DIVIDE"),
                      color: Colors. orangeAccent,
                      elevation: 10.0,
                    ),
                        ),
            
                     
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(this.displayresult,
                      style:TextStyle(
                        fontSize: 20.0
                      ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(this.output,
                      style: TextStyle(
                        fontSize: 30.0
                      ),),
                    ),
                    
                    Container(
                          padding: EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: (){
                              setState(() {
                                _reset();
                              });
                            },
                      child: Text("RESET"),
                      color: Colors.lightGreen,
                      elevation: 10.0,
                    ),
                        ),
                  ],
                ),
              )
    );
  }

}