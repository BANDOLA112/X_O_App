import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xogame/HomePage.dart';
import 'dataLayout.dart';

class Usersscreen extends StatefulWidget {
  static const String routeName='UsersScreen';

  @override
  State<Usersscreen> createState() => _UsersscreenState();
}

class _UsersscreenState extends State<Usersscreen> {
   String player1Name='';

   String player2Name='';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('X O Game',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text('Player 1',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'enter the Player1 name',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                                ),
                                border: OutlineInputBorder(),fillColor:Colors.grey
                            ),
                            onChanged: (value){
                              player1Name=value;
                            },),

                          ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Text('Player 2',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'enter the Player2 name',
                                hintStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                                border: OutlineInputBorder(),fillColor:Colors.grey
                            ),
                            onChanged: (value){
                            player2Name=value;
                          },),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                        onPressed: (){
                           Navigator.pushNamed(context,Homepage.routeName,
                           arguments: PlayerData(player1Name: player1Name, player2Nmae: player2Name));
                        },
                        child: Text("Continuo",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        )
                    )
                  ],
                ),

              )
            ],
          ),


        )

      ),
    );
  }
}
