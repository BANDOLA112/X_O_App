import 'package:flutter/material.dart';
import 'package:xogame/Widgets/buttonWidget.dart';
import 'package:xogame/dataLayout.dart';
class Homepage extends StatefulWidget {
static const String routeName='HomePage';

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String>buttonsValues = [
    '', '', '',
    '', '', '',
    '', '', ''
  ];
  int player1score = 0;
  int player2score = 0;

  @override
  Widget build(BuildContext context) {
    PlayerData arg = ModalRoute
        .of(context)!
        .settings
        .arguments as PlayerData;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("X O Game", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white
        ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(arg.player1Name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text('$player1score',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(arg.player2Nmae,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text('$player2score',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Buttonwidget(buttonsValues[0], 0, onClick),
              Buttonwidget(buttonsValues[1], 1, onClick),
              Buttonwidget(buttonsValues[2], 2, onClick)
            ],
          )),
          Expanded(child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Buttonwidget(buttonsValues[3], 3, onClick),
              Buttonwidget(buttonsValues[4], 4, onClick),
              Buttonwidget(buttonsValues[5], 5, onClick)
            ],
          )),
          Expanded(child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Buttonwidget(buttonsValues[6], 6, onClick),
              Buttonwidget(buttonsValues[7], 7, onClick),
              Buttonwidget(buttonsValues[8], 8, onClick)
            ],
          )),

        ],
      ),
    );
  }

  int counter = 0;

  onClick(int index) {
    if (buttonsValues[index].isEmpty) {
      if (counter % 2 == 0) {
        buttonsValues[index] = 'X';
      } else {
        buttonsValues[index] = 'O';
      }
    } else {
      return;
    }
    checkWin();
    counter++;
    setState(() {

    });
  }

  checkWin() {
    for (int i = 0; i < 3; i++) {
      if (buttonsValues[i] == 'X' && buttonsValues[i + 3] == 'X' &&
          buttonsValues[i + 6] == 'X'||buttonsValues[i] == 'X' && buttonsValues[i + 1] == 'X' &&
          buttonsValues[i + 2] == 'X') {
        player1score += 1;
        buttonsValues = [
          '', '', '',
          '', '', '',
          '', '', ''
        ];
      }else if(buttonsValues[i] == 'O' && buttonsValues[i + 3] == 'O' &&
          buttonsValues[i + 6] == 'O'||buttonsValues[i] == 'O' && buttonsValues[i + 1] == 'O' &&
          buttonsValues[i + 2] == 'O'){
        player2score+=1;
        buttonsValues = [
          '', '', '',
          '', '', '',
          '', '', ''
        ];
    }else if(buttonsValues[i]=='X'&&buttonsValues[i+4]=='X'&&buttonsValues[i+8]=='X'||
          buttonsValues[i+2]=='X'&&buttonsValues[i+4]=='X'&&buttonsValues[i+6]=='X'){
        player1score+=1;
        buttonsValues = [
          '', '', '',
          '', '', '',
          '', '', ''
        ];
      }else if(buttonsValues[i]=='O'&&
          buttonsValues[i+4]=='O'&&
          buttonsValues[i+8]=='O'||
          buttonsValues[i+2]=='O'&&
              buttonsValues[i+4]=='O'&&
              buttonsValues[i+6]=='O'){
        player1score+=1;
        buttonsValues = [
          '', '', '',
          '', '', '',
          '', '', ''
        ];
      }
      }
    setState(() {

    });
  }
}
