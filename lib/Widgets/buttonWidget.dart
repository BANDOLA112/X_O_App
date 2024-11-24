import 'package:flutter/material.dart';
class Buttonwidget extends StatelessWidget {
  late String value;
  late int index;
  Function onClick;
  Buttonwidget(this.value,this.index,this.onClick);
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          color: Colors.red
        ),
        margin: EdgeInsets.all(5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
            onPressed: (){
            onClick(index);
            print(index);
            },
            child: Text(value,style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),)
        )
    )
    );
  }

}
