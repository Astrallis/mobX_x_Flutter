import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'store/counter/counter.dart';

class CounterPage extends StatelessWidget {
  Counter _counter=new Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(
              builder:(context)=> Text(
              "${_counter.count}",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 70),
            ),
          ),
          SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  color: Colors.black,
                  onPressed: _counter.increment,
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        "ADD", style: TextStyle(color: Colors.white,fontSize: 20),
                      )
                    ],
                  )),
                 RaisedButton(
                  color: Colors.black,
                  onPressed: _counter.decrement,
                  child: Row(
                    children: [
                      Icon(
                        Icons.subdirectory_arrow_left,
                        color: Colors.white,
                      ),
                      Text(
                        "MINUS", style: TextStyle(color: Colors.white,fontSize: 20),
                      )
                    ],
                  )),
                  
            ],
          ),
          Padding(padding: EdgeInsets.all(20),
                  child: Text("Count with MobX demo basic",style: TextStyle(color: Colors.white),),
                  )
        ],
      ),
    );
  }
}
